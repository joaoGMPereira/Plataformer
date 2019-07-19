draw_self()

//set flash shader to enemy
if(flash > 0) {
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}