//when it was killed
if(hp <= 0) {
	//change to enemyDead move enemydead to direction of bullet
	with(instance_create_layer(x, y, layer, objEnemyDead)) {
		direction = other.hitFrom;
		horizontalSpeed = lengthdir_x(3, direction);
		verticalSpeed = lengthdir_y(3, direction)-2;
		if(sign(horizontalSpeed) != 0) {
			image_xscale = sign(horizontalSpeed);
		}
	}
	instance_destroy();
}