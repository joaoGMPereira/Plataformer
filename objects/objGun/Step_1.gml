x = objPlayer.x;
y = objPlayer.y + 10;

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

firingDelay = firingDelay - 1;
recoil = max(0, recoil - 1);
if((mouse_check_button(mb_left)) || gamepad_button_check(0, gp_shoulderrb)) && (firingDelay < 0) {
	recoil = 4;
	firingDelay = 5;
	with(instance_create_layer(x, y, "Bullets", objBullet)) {
		speed = 25;
		direction = other.image_angle + irandom_range(-3,3);
		image_angle = direction;
	}
}

x = x + lengthdir_x(recoil, image_angle);
y = y + lengthdir_x(recoil, image_angle);

if(image_angle > 90) && (image_angle < 270) {
	image_yscale = -1;
} else {
	image_yscale = 1;
}