x = objPlayer.x;
y = objPlayer.y + 10;

#region //Check if user use keyboard or gamepad
if(objPlayer.controller == 0) {
	image_angle = point_direction(x, y, mouse_x, mouse_y);
} else {
	var controllerHorizontal = gamepad_axis_value(0, gp_axisrh);
	var controllerVertical = gamepad_axis_value(0, gp_axisrv);
	if(abs(controllerHorizontal) > 0.2 || abs(controllerVertical) > 0.2) { 
		controllerAngle = point_direction(0, 0, controllerHorizontal, controllerVertical);
	}
	image_angle = controllerAngle;
}
#endregion

#region//shoot bullets with some delay
	firingDelay = firingDelay - 1;
	if((mouse_check_button(mb_left)) || gamepad_button_check(0, gp_shoulderrb)) && (firingDelay < 0) {
		recoil = 4;
		firingDelay = 5;
		//Shake Screen When shoot
		scriptScreenShake(2,10);
		audio_sound_pitch(snShoot, choose(0.8, 1.0, 1.2, 1.4));
		audio_play_sound(snShoot,5,false);
		with(instance_create_layer(x, y, "Bullets", objBullet)) {
			bulletSpeed = 25;
			//add some spread to bullet angle
			direction = other.image_angle + irandom_range(-3,3);
			image_angle = direction;
		}
		with(objPlayer) {
			gunKickX = lengthdir_x(1.5, other.image_angle - 180);
			gunKickY = lengthdir_y(1.0, other.image_angle - 180);
		}
	}
	
	#region //add some recoil to gun
	recoil = max(0, recoil - 1);
	x = x + lengthdir_x(recoil, image_angle);
	y = y + lengthdir_y(recoil, image_angle);
	#endregion

#endregion

#region //invert sprite when change gun side
if(image_angle > 90) && (image_angle < 270) {
	image_yscale = -1;
} else {
	image_yscale = 1;
}
#endregion