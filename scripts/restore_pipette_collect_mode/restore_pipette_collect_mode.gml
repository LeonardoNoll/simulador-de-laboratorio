/// @function restore_pipette_collect_mode(_pipette)
/// @description Devolve a pipeta ao modo de coleta depois que ela é esvaziada. Ao coletar,
///              collect_liquid troca on_release/scale_on_contact_list para o modo de despejo;
///              sem restaurar, a pipeta vazia continua tentando despejar em vez de coletar.
/// @param _pipette (Id.Instance): A pipeta a ser restaurada

function restore_pipette_collect_mode(_pipette) {
	if (!instance_exists(_pipette)) return;
	if (!variable_instance_exists(_pipette, "collect_on_release")) return;

	_pipette.on_release = _pipette.collect_on_release;
	_pipette.scale_on_contact_list = _pipette.collect_scale_on_contact_list;
}
