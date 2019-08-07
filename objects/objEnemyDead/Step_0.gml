#region // animate enemyDead sprites
if(done == 0) {
	verticalSpeed = verticalSpeed + enemyDeadGravity;

	#region //HorizontalCollision
	if(place_meeting(x+horizontalSpeed, y, objWall)) {
		//Move player to the horizontal until player collide to wall
		while(!place_meeting(x+sign(horizontalSpeed), y, objWall)) {
			x = x + sign(horizontalSpeed)
		}
		horizontalSpeed = 0;
	}
	x = x + horizontalSpeed;
	#endregion
	
	#region //VerticalCollision
	if(place_meeting(x, y+verticalSpeed, objWall)) {
		#region //StopAnimation when hit the wall
		if(verticalSpeed > 0) {
			done = 1;
			image_index = 1;
		}
		#endregion
		
		//Move player to the vertical until player collide to wall
		while(!place_meeting(x, y+sign(verticalSpeed), objWall)) {
			y = y + sign(verticalSpeed)
		}
		verticalSpeed = 0;
	}
	y = y + verticalSpeed;
	#endregion
}
#endregion