/// @desc scriptKillPlayer(invincibleTime)
///@arg invincibleTime count of time that player is invincible.
var invulnerability = argument0; 
if(invincible == false) {
	invincible = true;
	alarm_set(0,invulnerability);
	hp--
}

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