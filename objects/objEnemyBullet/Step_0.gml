x += lengthdir_x(bulletSpeed, direction);
y += lengthdir_y(bulletSpeed, direction);


#region //Just delete bullet when really hit the wall, and create spark
if(place_meeting(x, y, objWall)) {
	#region // Move spark to edge of wall
	while(place_meeting(x, y, objWall)) {
		x -= lengthdir_x(1, direction);
		y -= lengthdir_y(1, direction);
	}
	#endregion
	bulletSpeed = 0;
	instance_change(objHitSpark, true);
	
}
#endregion