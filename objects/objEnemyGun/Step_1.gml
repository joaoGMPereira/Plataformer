/// @desc Gun Step

#region // Set Gun Configuration
x = owner.x;
y = owner.y + 10;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if(instance_exists(objPlayer)) {
	if(objPlayer.x < x) {
		image_yscale = -image_yscale;
	}
	if(point_distance(objPlayer.x, objPlayer.y, x, y) < 600) {
		image_angle = point_direction(x, y, objPlayer.x, objPlayer.y)
		countdown--;
		if(countdown <= 0) {
			countdown = countdownRate;
			if(!collision_line(x, y, objPlayer.x ,objPlayer.y, objWall, false, false)) {
				show_debug_message(countdown);
				#region //Set Bullet Configuration
				audio_sound_pitch(snShoot, choose(0.8, 1.0, 1.2, 1.4));
				audio_play_sound(snShoot,5,false);
				with(instance_create_layer(x, y, "Bullets", objEnemyBullet)) {
					bulletSpeed = 8;
					//add some spread to bullet angle
					direction = other.image_angle + irandom_range(-3,3);
					image_angle = direction;
				}
				#endregion
			}
		}
	}
}
#endregion
