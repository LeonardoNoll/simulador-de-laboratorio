// Inherit the parent event
event_inherited();

name = "HCl"
content = name
ph = 1
needed_EPI = [obj_glove,obj_lab_coat, obj_goggles]
becker = noone
scale_on_contact_list = [obj_25ml_becker]

on_release = function() {
	if(place_meeting(x,y,obj_25ml_becker)) {
		becker = instance_nearest(x,y, obj_25ml_becker)
		//event_perform_object(becker, ev_mouse, ev_left_press)
		if(is_becker_ready(becker)) {
			global.selected = id 
			var _my_menu = instance_create_layer(mouse_x + (mouse_x > room_width/2 ? -200 : sprite_width), mouse_y, "GUI", obj_menu)
			_my_menu.options = [OPTIONS.IDENFICIAR_RECIPIENTE]
			_my_menu.parent = self
			get_input(x, y, "Mls a despejar", function(_text) {
				if string_digits(_text) == 15 {
					pass_liquid_to_becker(_text, self, s_marked_becker_with_HCl)
				}
				else 
					criar_textbox(x,y,["Esta não é a quantia correta de mls. Tente novamente."])				
			})
		}
	}
}
