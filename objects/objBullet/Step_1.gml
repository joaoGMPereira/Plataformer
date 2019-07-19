//Just delete bullet when really hit the wall
if(place_meeting(x, y, objWall)) {
	instance_destroy();
}