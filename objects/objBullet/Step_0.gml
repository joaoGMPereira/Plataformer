x += lengthdir_x(bulletSpeed, direction);
y += lengthdir_y(bulletSpeed, direction);

#region //check if is shootable object, and colide with it
if(place_meeting(x, y, objParentShootable)) {
	with(instance_place(x, y , objParentShootable)) {
	hp--;
	flash = 3;
	hitFrom = other.direction;
	}
	instance_destroy();
}
#endregion


#region //Just delete bullet when really hit the wall, and create spark
if(place_meeting(x, y, objWall)) && (image_index != 0) {
	#region // Move spark to edge of wall
	while(place_meeting(x, y, objWall)) {
		x -= lengthdir_x(1, direction);
		y -= lengthdir_y(1, direction);
	}
	#endregion
	bulletSpeed = 0;
	instance_change(objHitSpark, true);
	layer_add_instance("Tiles", id);
	depth += 1;
	
}
#endregion