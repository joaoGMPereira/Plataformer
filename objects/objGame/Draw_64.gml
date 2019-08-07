/// @description Insert description here
// You can write your code in this editor

if (room != roomMenu) {
	var pc;
	pc = (global.playerHP / global.playerMaxHP) * 100;
	var healthBarTitle = "Life: "
	var titleWidth = string_width(healthBarTitle);
	var titleHeight = string_height(healthBarTitle);
	draw_set_color(c_white);
	draw_set_font(fMenu);
	draw_text(titleWidth + 10, titleHeight + 25, "Life ");

	draw_healthbar(10 + titleWidth, 30, titleWidth + 110, 50, pc, c_black, c_red, c_lime, 0, true, false);
}