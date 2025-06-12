function scale_on_contact(target){
	var target_xscale = place_meeting(x,y, target) ? 1.2 : 1;
	var target_yscale = place_meeting(x,y, target) ? 1.2 : 1;

	// Smoothly transition the scale
	image_xscale = lerp(image_xscale, target_xscale, 0.2);
	image_yscale = lerp(image_yscale, target_yscale, 0.2);
	target.image_xscale = lerp(target.image_xscale, target_xscale, 0.2);
	target.image_yscale = lerp(target.image_yscale, target_yscale, 0.2);
}