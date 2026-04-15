# Context for Codex (resume)

## Project
GameMaker Studio 2 educational virtual lab (Biochemistry/Microbiology for dentists). Workspace: `/home/leonardo/GameMakerProjects/simulador-de-laboratorio`.

## Language rules
- Code identifiers in English.
- Explanations in Portuguese.

## Data-driven structs (experiment 4)
Defined in `rooms/rm_4_atividade_enzimatica_atividade_salivar/RoomCreationCode.gml`.
- `global.liquids_experiment_4`
- `global.test_tubes_experiment_4`

IDs were corrected (authorized):
- `destiled_water` -> `distilled_water`
- `distiled_saliva` -> `distilled_saliva`
- `startch_control` -> `starch_control`
- `startch` -> `starch`

Also updated `objects/obj_distiled_water_experiment_4/Create_0.gml`:
- `content_id = "distilled_water"`

## Core functions touched

### `transfer_liquid_to_test_tube` (`scripts/transfer_liquid_to_test_tube/transfer_liquid_to_test_tube.gml`)
- Bidirectional mix support: if incoming mix not found, tries current mix.
- Passes `_ml` into `is_marked_correctly`:
  `is_marked_correctly(_test_tube, _test_tube_def, _ml)`
- Fixed `get_liquid_def` argument order.
- Validates `_liquid_def` before use.
- Always checks `can_transfer_liquid_to_test_tube` even for empty tube.
- When tube is empty, returns `transfer_liquid_result_ok(_liquid_def, ...)` (no undefined `_incoming_liquid`).
- Applies `required_ml` from mix result:
  - `ml_required` if `_ml` undefined
  - `insufficient_ml` if `_ml` < required
- Returns standardized result via `transfer_liquid_result_ok` with resulting liquid from mix.

### `can_transfer_liquid_to_test_tube` (`scripts/can_transfer_liquid_to_test_tube/can_transfer_liquid_to_test_tube.gml`)
- Now validates that `_test_tube_def` has `liquids` before `struct_get`.

### `can_mix` (`scripts/can_mix/can_mix.gml`)
- Bidirectional compatibility: checks `from.mix_results[to]` or `to.mix_results[from]`.

### `parse_mix_result` unchanged
- Accepts string or struct `{ result, ml }`.

### Result helpers
- `transfer_liquid_result_ok` and `_fail` now include both snake_case and camelCase:
  - `error_reason` + `errorReason`
  - `resulting_liquid` + `resultingLiquid`

### `is_marked_correctly` (`scripts/is_name_correct/is_name_correct.gml`)
Updated logic per rules:
- Takes 3 args: `(_recipient, _substance, _mls)`.
- Validates using `global.test_tubes_experiment_4` ONLY.
- Logic:
  1) Match struct whose `name` equals `test_tube.name`.
  2) Must contain `liquids` struct.
  3) `liquids` must have key equal to `test_tube.content_id` (per user clarification: content_id refers to liquid being transferred).
  4) Value must equal `_mls` exactly.
- Returns boolean.
- Requires `_mls` not undefined.

**Important**: user clarified
- Use `content_id` of liquid being transferred (not tube).
- Must pass `_mls` to `is_marked_correctly`, hence change in `transfer_liquid_to_test_tube` was authorized.

## Current blocking error
Runtime error when transferring distilled water to test tube in room `rm_4_atividade_enzimatica_atividade_salivar`:
```
unable to convert string "starch_control" to int64
at gml_Script_find_test_tube_def_by_name (line 46) - var _def2 = _test_tubes_struct[_id];
```
This indicates `_test_tubes_struct` behaves like an array (string index -> int64 conversion) or is an instance id. `find_test_tube_def_by_name` currently accepts only struct, so the runtime type must be confirmed.

## What to debug next
In `transfer_liquid_to_test_tube`, right before `find_test_tube_def_by_name`, log:
```
show_debug_message("test_tubes is_array=" + string(is_array(_test_tubes)));
show_debug_message("test_tubes is_struct=" + string(is_struct(_test_tubes)));
show_debug_message("test_tubes is_real=" + string(is_real(_test_tubes)));
show_debug_message("test_tubes is_instance=" + string(is_real(_test_tubes) && instance_exists(_test_tubes)));
show_debug_message("test_tubes is_map=" + string(is_real(_test_tubes) && ds_exists(_test_tubes, ds_type_map)));
show_debug_message(_test_tubes);
```
Need to confirm actual type of `_test_tubes` at runtime.

## Pending (not applied)
- Consider saving `_ml` on the test tube inside `try_to_pass_liquid_to_test_tube_experiment_4` (e.g., `_test_tube.ml = _ml`) to preserve volume state; user requested to remember this change but not apply yet.

## Notes
- User requested not to use `obj_test_tube`, use `obj_test_tube_experiment_4`.
- `obj_test_tube_experiment_4` currently only sets `content = undefined` in Create. It does NOT set `content_id` or `ml` by default.
- Transfer requires `test_tube.content_id` to be set before calling `transfer_liquid_to_test_tube`.

## Files changed so far
- `rooms/rm_4_atividade_enzimatica_atividade_salivar/RoomCreationCode.gml`
- `objects/obj_distiled_water_experiment_4/Create_0.gml`
- `scripts/transfer_liquid_to_test_tube/transfer_liquid_to_test_tube.gml`
- `scripts/can_mix/can_mix.gml`
- `scripts/transfer_liquid_result_ok/transfer_liquid_result_ok.gml`
- `scripts/transfer_liquid_result_fail/transfer_liquid_result_fail.gml`
- `scripts/can_transfer_liquid_to_test_tube/can_transfer_liquid_to_test_tube.gml`
- `scripts/is_name_correct/is_name_correct.gml`
- `scripts/find_test_tube_def_by_name/find_test_tube_def_by_name.gml`
