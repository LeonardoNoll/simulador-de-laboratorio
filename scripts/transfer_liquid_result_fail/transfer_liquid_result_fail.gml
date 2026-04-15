/// @function transfer_liquid_result_fail(_reason)
/// @description Cria um resultado padrao de falha para transferencia.
/// @param _reason (string): Codigo do erro

function transfer_liquid_result_fail(_reason) {
    return {
        success: false,
        error_reason: _reason,
        errorReason: _reason,
        resulting_liquid: undefined,
        resultingLiquid: undefined,
        resulting_liquid_id: "",
        required_ml: undefined
    };
}
