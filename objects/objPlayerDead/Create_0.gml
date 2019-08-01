horizontalSpeed = 3;
verticalSpeed = -4;
enemyDeadGravity = 0.2;
done = 0;

image_speed = 0;
image_index = 0;

//Shake Screen When shoot
scriptScreenShake(6,60);
audio_play_sound(snDeath, 10, false);
//Slow down frames when player is dead
game_set_speed(30, gamespeed_fps);
with(objCamera) {
	follow = other.id;
}