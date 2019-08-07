/// @desc Create Wall

myWall = instance_create_layer(x, y, layer, objWall);
#region //Set sprites of wall and Crate same size
with(myWall) {
	image_xscale = other.sprite_width/sprite_width;
	image_yscale = other.sprite_height/sprite_height;
}