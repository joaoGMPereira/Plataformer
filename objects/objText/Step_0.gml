/// @desc Progress Text

letters += textSpeed;
//Cut Text to animate text
text_current = string_copy(text, 1, floor(letters));

draw_set_font(fSign)
//Set height of Box
if(height == 0) {
	height = string_height(text);
}
//Set width of Box every letter
width = string_width(text_current);

//Destroy when done
if(letters >= length ) && (keyboard_check_pressed(vk_anykey)) {
	instance_destroy();
	with(objCamera) follow = objPlayer;
}
