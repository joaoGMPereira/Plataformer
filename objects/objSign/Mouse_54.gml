/// @desc

#region //check if user is inside area of 64
if(point_in_circle(objPlayer.x, objPlayer.y, x, y, 64)) && !(instance_exists(objText)) {
	with(instance_create_layer(x, y -64, layer, objText)) {
		text = other.text;
		length = string_length(text);
	}
	
	with(objCamera) {
		follow = other.id;
	}
}
#endregion