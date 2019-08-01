/// @description Insert description here
// You can write your code in this editor
hp--;
if(hp <= 0) {
	with(objGun) instance_destroy();
	instance_change(objPlayerDead, true);

	direction = point_direction(other.x, other.y, x, y);
	horizontalSpeed = lengthdir_x(6, direction)
	verticalSpeed = lengthdir_y(4, direction) -2;
	if(sign(horizontalSpeed) != 0) {
		image_xscale = sign(horizontalSpeed);
	}
}