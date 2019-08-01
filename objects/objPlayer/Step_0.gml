#region//Get player input
if(hasControl) {
	leftKey = keyboard_check(vk_left) || keyboard_check(ord("A"));
	rightKey = keyboard_check(vk_right) || keyboard_check(ord("D"));
	jumpKey = keyboard_check_pressed(vk_space);

	if (leftKey) || (rightKey) || (jumpKey) {
		controller = 0;
	}

	//Get work with gamepad if controller in video game,
	//with gamepad horizontal speed vary depend how you push button
	if(abs(gamepad_axis_value(0,gp_axislh)) > 0.2) {
		leftKey = abs(min(gamepad_axis_value(0, gp_axislh), 0));
		rightKey = max(gamepad_axis_value(0, gp_axislh), 0);
		controller = 1;
	}
	//Get work with gamepad if controller in video game,
	//with gamepad press X to jump
	if(gamepad_button_check_pressed(0, gp_face1)) {

		jumpKey = 1;
		controller = 1;

	}
} else {
	rightKey = 0;
	leftKey = 0;
	jumpKey = 0;
}

#endregion

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
	if(sprite_index == sprPlayerJump) {
		audio_sound_pitch(snLanding, choose(0.8, 1.0, 1.2, 1.4));
		audio_play_sound(snLanding, 6, false);
	}
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





