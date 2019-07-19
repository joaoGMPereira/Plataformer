// animate enemyDead sprites
if(done == 0) {
	verticalSpeed = verticalSpeed + enemyDeadGravity;

	//HorizontalCollision
	if(place_meeting(x+horizontalSpeed, y, objWall)) {
		//Move player to the horizontal until player collide to wall
		while(!place_meeting(x+sign(horizontalSpeed), y, objWall)) {
			x = x + sign(horizontalSpeed)
		}
		horizontalSpeed = 0;
	}
	x = x + horizontalSpeed;

	//VerticalCollision
	if(place_meeting(x, y+verticalSpeed, objWall)) {
		if(verticalSpeed > 0) {
			done = 1;
			image_index = 1;
		}
		//Move player to the vertical until player collide to wall
		while(!place_meeting(x, y+sign(verticalSpeed), objWall)) {
			y = y + sign(verticalSpeed)
		}
		verticalSpeed = 0;
	}
	y = y + verticalSpeed;
}