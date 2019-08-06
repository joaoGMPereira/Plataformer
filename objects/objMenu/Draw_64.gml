/// @desc Draw Menu

//Set font and position of menu
draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);


//Draw item of menu
for(var countItems = 0; countItems < menuItems; countItems++) {
	var textColor = c_gray
	var offSet = 2;
	var txt = menu[countItems];
	if(menuCursor == countItems) {
		txt = string_insert("> ", txt, 0);
		textColor = c_white;
	}
	
	var xx = menuX;
	var yy = menuY - (menuItemHeight * (countItems * 1.5));
	draw_set_color(c_black);
	//Set border black to text
	draw_text(xx - offSet, yy, txt);
	draw_text(xx + offSet, yy, txt);
	draw_text(xx, yy + offSet, txt);
	draw_text(xx, yy - offSet, txt);
	//set text white
	draw_set_color(textColor);
	draw_text(xx, yy, txt);
	
}

draw_set_color(c_black);
draw_rectangle(guiWidth, guiHeight -200, guiWidth + 900, guiHeight, false);