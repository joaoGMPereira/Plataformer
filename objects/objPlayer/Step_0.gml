//Get player input
leftKey = keyboard_check(vk_left);
rightKey = keyboard_check(vk_right);
jumpKey = keyboard_check_pressed(vk_space);
leftKey = keyboard_check(vk_left);

//Calculate moviment
var moveHorizontal = rightKey - leftKey;

horizontalSpeed = moveHorizontal * walkSpeed;

verticalSpeed = verticalSpeed + playerGravity;
if place_meeting(x, y+1, objWall) && (jumpKey) {
	
	verticalSpeed = -7;

}

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
	//Move player to the vertical until player collide to wall
	while(!place_meeting(x, y+sign(verticalSpeed), objWall)) {
		y = y + sign(verticalSpeed)
	}
	verticalSpeed = 0;
}
y = y + verticalSpeed;

//Animations
//check if player isnt colliding to the wall
if(!place_meeting(x, y+1, objWall)) {
	//change to player sprites Jump
	sprite_index = sprPlayerJump;
	image_speed = 0;
	//change sprites frame checking if player is in the air.
	if(sign(verticalSpeed) > 0) image_index = 0; else image_index = 1;
} else {
	//Check if is running or not
	image_speed = 1;
	if(horizontalSpeed == 0) {
		sprite_index = sprPlayer;
	} else {
		sprite_index = sprPlayerRun;
	}
}
//Check if is running to left or right
if (horizontalSpeed != 0) image_xscale = sign(horizontalSpeed);



