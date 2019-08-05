
verticalSpeed = verticalSpeed + enemyGravity;

//
if ((grounded) && (afraidOfHeights) && (!place_meeting(x+horizontalSpeed, y + 1, objWall))) {
	horizontalSpeed = -horizontalSpeed;
}
//HorizontalCollision
if(place_meeting(x+horizontalSpeed, y, objWall)) {
	//Move enemy to the horizontal until player collide to wall
	while(!place_meeting(x+sign(horizontalSpeed), y, objWall)) {
		x = x + sign(horizontalSpeed)
	}
	horizontalSpeed = -horizontalSpeed;
}
x = x + horizontalSpeed;

//VerticalCollision
if(place_meeting(x, y+verticalSpeed, objWall)) {
	//Move enemy to the vertical until enemy collide to wall
	while(!place_meeting(x, y+sign(verticalSpeed), objWall)) {
		y = y + sign(verticalSpeed)
	}
	verticalSpeed = 0;
}
y = y + verticalSpeed;

//Animations
//check if enemy isnt colliding to the wall
if(!place_meeting(x, y+1, objWall)) {
	grounded = false;
	//change to player sprites Jump
	sprite_index = sprEnemyJump;
	image_speed = 0;
	//change sprites frame checking if enemy is in the air.
	if(sign(verticalSpeed) > 0) image_index = 0; else image_index = 1;
} else {
	grounded = true;
	//Check if is running or not
	image_speed = 1;
	if(horizontalSpeed == 0) {
		sprite_index = sprEnemy;
	} else {
		sprite_index = sprEnemyRun;
	}
}
//Check if is running to left or right
if (horizontalSpeed != 0) image_xscale = sign(horizontalSpeed) * size;

image_yscale = size;

