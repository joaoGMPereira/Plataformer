#region // Move player towards center
	layer_x("TitleAssets", min(layer_get_x("TitleAssets") + 1, RESWIDTH * 0.5 - roomBuffer));
#endregion

#region //Progress Text
	letters += lettersSpeed;
	text = string_copy(endText[currentline], 1, floor(letters));
#endregion

#region //Next Line
	if(letters >= length) && (keyboard_check_pressed(vk_anykey)) {
		if(currentline + 1 == array_length_1d(endText)) {
			scriptSlideTransition(TransictionMode.RESTART);
		} else {
			currentline++;
			letters = 0;
			length = string_length(endText[currentline]);
		}
	}
#endregion