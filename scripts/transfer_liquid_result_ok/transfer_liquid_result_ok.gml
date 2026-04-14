/// @function transfer_liquid_result_ok(_liquid, _required_ml)
/// @description Cria um resultado padrao de sucesso para transferencia.
/// @param _liquid (struct): Liquido resultante
/// @param _required_ml (real): Ml exigido pelo resultado (opcional)

function transfer_liquid_result_ok(_liquid, _required_ml) {
    return {
        success: true,
        error_reason: "",
        errorReason: "",
        resulting_liquid: _liquid,
        resultingLiquid: _liquid,
        resulting_liquid_id: _liquid.id,
        required_ml: _required_ml
    };
}
