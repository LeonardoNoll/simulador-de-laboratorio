/// @function scale_pulse(obj, scale_max, duration)
/// @param obj        // Referência ao objeto que será escalado
/// @param scale_max  // Valor máximo de escala (ex: 1.5 para 150%)
/// @param duration   // Duração total da animação em segundos

function scale_pulse(obj, scale_max, duration) {
    // Cria uma estrutura para armazenar o estado da animação
    var _pulse_data = {
        _obj: obj, // Referência ao objeto
        _original_scale_x: obj.image_xscale,
        _original_scale_y: obj.image_yscale,
        _scale_max: scale_max,
        _duration_frames: duration * game_get_speed(gamespeed_fps),
        _current_frame: 0,
        
        // Define a função de atualização como um método da estrutura
        update: function() {
            self._current_frame += 1;
            var _half_duration = self._duration_frames / 2;

            if (self._current_frame <= _half_duration) {
                // Fase de aumento
                var t = self._current_frame / _half_duration;
                self._obj.image_xscale = lerp(self._original_scale_x, self._scale_max, t);
                self._obj.image_yscale = lerp(self._original_scale_y, self._scale_max, t);
            } else if (self._current_frame <= self._duration_frames) {
                // Fase de retorno
                var t = (self._current_frame - _half_duration) / _half_duration;
                self._obj.image_xscale = lerp(self._scale_max, self._original_scale_x, t);
                self._obj.image_yscale = lerp(self._scale_max, self._original_scale_y, t);
            } else {
                // Finaliza a animação
                self._obj.image_xscale = self._original_scale_x;
                self._obj.image_yscale = self._original_scale_y;
                self._obj.scale_pulse_data = undefined;
            }
        }
    };

    // Atribui a estrutura ao objeto
    obj.scale_pulse_data = _pulse_data;
}
