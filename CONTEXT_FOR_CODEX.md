# Context for Codex (updated)

## Project
GameMaker Studio 2 educational virtual lab (Biochemistry/Microbiology for dentists). Workspace: `/home/leonardo/GameMakerProjects/simulador-de-laboratorio`.

## Language rules
- Code identifiers in English.
- Explanations in Portuguese.

## Data-driven structs (experiment 4)
Defined in `rooms/rm_4_atividade_enzimatica_atividade_salivar/RoomCreationCode.gml`.
- `global.liquids_experiment_4`
- `global.test_tubes_experiment_4`

IDs were corrected:
- `destiled_water` -> `distilled_water`
- `distiled_saliva` -> `distilled_saliva`
- `startch_control` -> `starch_control`
- `startch` -> `starch`

## Core functions touched

### `transfer_liquid_to_test_tube` (`scripts/transfer_liquid_to_test_tube/transfer_liquid_to_test_tube.gml`)
- Bidirectional mix support.
- Fixed: uses `[$ _test_tube_id]` for struct access to prevent `string to int64` conversion errors.
- Validates `can_transfer_liquid_to_test_tube` before proceeding.
- Returns standardized result via `transfer_liquid_result_ok` or `_fail`.

### `try_to_pass_liquid_to_test_tube_experiment_4` (`scripts/try_to_pass_liquid_to_test_tube_experiment_4/try_to_pass_liquid_to_test_tube_experiment_4.gml`)
- **Async Logic**: Uses `get_input` with an anonymous function callback.
- Captures context (test tube, liquids) and performs the transfer only after the user provides the volume via input.
- Prevents infinite loops by not calling itself directly as a callback.

### `is_marked_correctly` (`scripts/is_name_correct/is_name_correct.gml`)
- Validates using `global.test_tubes_experiment_4`.
- Fixed: uses `[$ ]` syntax for all dynamic struct field access.
- Logic:
  1) Matches struct whose `name` equals `test_tube.name`.
  2) Validates if `content_id` (liquid being transferred) exists in `liquids` and matches the amount `_mls`.

### `find_test_tube_def_by_name` (`scripts/find_test_tube_def_by_name/find_test_tube_def_by_name.gml`)
- Cleaned: removed invalid `struct_get_names` call.
- Returns `{ id, def }` for a given tube name.

## Resolved issues
- Fixed `unable to convert string to int64` error by replacing `struct[key]` with `struct[$ key]` for string keys.
- Fixed `on_release` in `obj_distiled_water_experiment_4` (was calling the function immediately in Create instead of storing a reference).
- Fixed undefined `_ml` variable and potential infinite loop in experiment 4 transfer logic.

## Files changed
- `rooms/rm_4_atividade_enzimatica_atividade_salivar/RoomCreationCode.gml`
- `objects/obj_distiled_water_experiment_4/Create_0.gml`
- `scripts/transfer_liquid_to_test_tube/transfer_liquid_to_test_tube.gml`
- `scripts/is_name_correct/is_name_correct.gml`
- `scripts/find_test_tube_def_by_name/find_test_tube_def_by_name.gml`
- `scripts/try_to_pass_liquid_to_test_tube_experiment_4/try_to_pass_liquid_to_test_tube_experiment_4.gml`
- `scripts/can_mix/can_mix.gml`
- `scripts/transfer_liquid_result_ok/transfer_liquid_result_ok.gml`
- `scripts/transfer_liquid_result_fail/transfer_liquid_result_fail.gml`
- `scripts/can_transfer_liquid_to_test_tube/can_transfer_liquid_to_test_tube.gml`
