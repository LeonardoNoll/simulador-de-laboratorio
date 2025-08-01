event_inherited()

name = "Centrífuga"
options = [OPTIONS.ABRIR_CENTRIFUGA]
locked = true

visor = instance_create_depth(x, y, depth-1, obj_centrifuge_visor)
start_btn = instance_create_depth(x, y, depth-1, obj_start_centrifuge_btn)
plus_m_btn = instance_create_depth(x, y, depth-1, obj_plus_minute_centrifuge_btn)
minus_m_btn = instance_create_depth(x, y, depth-1, obj_minus_minute_centrifuge_btn)
plus_rpm_btn = instance_create_depth(x, y, depth-1, obj_plus_rpm_centrifuge_btn)
minus_rpm_btn = instance_create_depth(x, y, depth-1, obj_minus_rpm_centrifuge_btn)
fast_forward_btn = instance_create_depth(x, y, depth-1, obj_accelerate_centrifuge_btn)

seconds = 0
rpm = 0

last_update_time = current_time
counting_down = false
fast_forward = false
seconds_elapsed = 0
#macro EXPECTED_SECONDS 60*5