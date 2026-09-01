# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project overview

LaBiM — a 2D virtual lab simulator built in **GameMaker Studio 2** (GML) for teaching Biochemistry and Microbiology to Dentistry undergraduates. Each room in the project represents one lab experiment (saliva collection, buffer capacity titration, enzymatic activity, fluoride action, agar/broth culture media prep, biofilm collection, etc.). There is no separate build/test tooling — everything is developed and run through the GameMaker IDE.

- Live demo: https://odo.poa.ifrs.edu.br/
- Code identifiers: English. Explanations/comments/docs/commit messages to the user: Portuguese (matches existing code and docs).

## Working with this codebase

There is no CLI build/lint/test pipeline — this is a GameMaker Studio 2 project (`laboratorio.yyp`). To run or verify changes, the project must be opened and compiled from the GameMaker IDE (or the user runs it). When you can't run the IDE yourself, say so explicitly instead of claiming a change was verified.

Project layout follows standard GMS2 resource folders: `objects/`, `scripts/`, `rooms/`, `sprites/`, `sprite-base/` (source art), `fonts/`, `particles/`, `sequences/`, `datafiles/`. Each script lives in its own folder as `scripts/<name>/<name>.gml`; each object has one `.gml` file per event (`Create_0.gml`, `Step_0.gml`, `Draw_0.gml`, `Mouse_*.gml`, etc.) plus a `.yy` metadata file. `folders/` mirrors the GMS2 IDE's virtual folder tree and generally doesn't need editing directly.

`docs/` contains project-specific design notes worth reading before touching the systems they describe:
- `docs/features-map.md` — index of feature docs.
- `docs/features/generic-clickable-objects.md` — contract for `obj_clickable_need_EPI` (drag/drop, options, EPI gating).
- `docs/features/context-menu.md` — how to add new right-click context menu options.
- `docs/features/epi-locker-and-inventory.md` — EPI locker/inventory system.
- `docs/features/pipette-liquid-draw.md` — data-driven pattern for drawing liquid in pipettes (`liquid_draw_setup` struct per instance, no sprite-based branching in the draw script).
- Several feature doc files are stubs (0 bytes): `input.md`, `instructions.md`, `nav-btns.md`, `reference-table.md`, `text-box.md`.

## Core architecture

### Interactable objects: `obj_clickable_need_EPI`

Almost every physical, draggable lab item (beakers, pipettes, test tubes, bottles, etc.) inherits from `obj_clickable_need_EPI`. Key instance variables set in `Create_0.gml` and expected to be customized per descendant:
- `name` — display name, read by `obj_tool_tip`.
- `needed_EPI` — array of EPI objects (e.g. `obj_glove`, `obj_lab_coat`, `obj_goggles`) the player must have equipped (checked via `check_EPI`) before interacting.
- `options` — array of `OPTIONS` enum values; non-empty enables a right-click `obj_context_menu`.
- `on_release` — function assigned to run when the drag-and-drop is released (runs *before* the object snaps back to `base_x`/`base_y`).
- `scale_on_contact_list` — other object types that visually scale up on contact while this object is being dragged, signaling valid interaction targets.
- `locked` — disables dragging when true.
- `drag_mode`, `xx`/`yy`, `base_x`/`base_y`, `scale_pulse_data`, `tool_tip` — internal drag/tooltip/animation state; don't modify directly.

### Context menu system

`obj_context_menu` + `obj_context_btn`, spawned via `spawn_context_menu()` (called by default from `obj_clickable_need_EPI`'s Right Pressed event, or manually with a custom options array). The clicked object is reachable inside menu button logic via `parent`.

Adding a new context-menu action requires three synchronized edits:
1. Add a value to the `OPTIONS` enum **and** the corresponding string at the same index in `options_string`, both in `objects/obj_game/Create_0.gml`.
2. Write a script implementing the behavior (operates on `parent`, e.g. `with(parent) { ... }` or reads `parent` inside the function).
3. Add a `case OPTIONS.YOUR_OPTION:` in `obj_context_btn`'s Left Released event calling that script (`return` instead of `break` if the menu should stay open).

### EPI locker & inventory

`obj_locker_btn`/`obj_locker_GUI` show equippable items (descendants of `obj_generic_locker_item`); equipping moves them into `obj_inventory_btn`/`obj_inventory_GUI`. `check_EPI(expected_EPI)` checks `obj_inventory_btn.itens` against an object's `needed_EPI` array to gate interactions.

### Liquids / test tubes

Two competing patterns exist for representing liquids, depending on which experiment the code belongs to — check neighboring code before assuming one:
- **String-based** (older, e.g. experiment 3 / `pass_liquid_to_test_tube_3`): instances carry a `content` string (liquid name, possibly concatenated with `" + "` for mixes) and a `ph` number; `use_counter` limits how many times a tube can receive liquid.
- **Struct-based** (`LiquidDef`/`LiquidInstance` constructors in `scripts/LiquidDef` and `scripts/LiquidInstance`, used by experiment 4 in `rooms/rm_4_atividade_enzimatica_atividade_salivar/RoomCreationCode.gml` via `global.liquids_experiment_4` / `global.test_tubes_experiment_4`): liquids and test-tube defs are structs looked up by id. **Always use `[$ key]` syntax for dynamic/string-keyed struct access** — plain `struct[key]` throws a `string to int64` conversion error in GML. Transfers go through `can_transfer_liquid_to_test_tube` → `transfer_liquid_to_test_tube` → `transfer_liquid_result_ok`/`_fail`.

Test tubes generally track an `open`/`closed` boolean gating whether liquid can be added — check this before allowing a transfer, and give the user feedback via `create_textbox` when a transfer is rejected (closed tube, wrong content, capacity exceeded, disallowed protocol step, etc.) rather than silently returning.

### User feedback: `create_textbox`

`create_textbox(_x, _y, _msg)` spawns an `obj_text_box` at a position with either a single string message or an array of sequential messages (a "página por página" dialog). This is the standard way to give the player pedagogical/validation feedback (errors, instructions, results) — prefer it over silent `return`s when an action is disallowed.

### Instructions per room

Each room has a paired instructions script named `<room_name>_instructions` (e.g. `rm_1_normal_instructions`, `rm_3_afericao_de_capacidade_tampao_instructions`) returning an array of Portuguese instruction strings, displayed by `obj_instructions` / `obj_btn_instructions`.

### Async user input

`get_input(x, y, prompt, callback)` opens a text field and invokes a callback function with the entered text once submitted — used for naming/identifying recipients (`identify`, `identify_recipient`) and for experiment 4's volume-entry flow (`try_to_pass_liquid_to_test_tube_experiment_4`). When chaining input-driven flows, capture needed context in the callback closure rather than re-triggering the outer function, to avoid infinite loops.

### Naming conventions

- Experiment-specific object/script variants are suffixed with the experiment number, e.g. `obj_test_tube_experiment_3`, `obj_test_tube_experiment_4`, `pass_liquid_to_test_tube_3`, `update_notes_texts_experiment_6`. When fixing a bug, check whether it's isolated to one experiment's variant or shared logic before generalizing a fix.
- Rooms are named `rm_<number>_<description>` or `rm_categories_*` for the experiment-selection/category menu rooms.
