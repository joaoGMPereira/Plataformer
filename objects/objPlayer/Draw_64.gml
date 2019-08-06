/// @description Insert description here
// You can write your code in this editor
var pc;
pc = (hp / maxHP) * 100;
var healthBarTitle = "Life: "
var titleWidth = string_width(healthBarTitle);
var titleHeight = string_height(healthBarTitle);
draw_set_color(c_white);
draw_set_font(fMenu);
draw_text(60, 50, "Life ");

draw_healthbar(60, 20, 160, 40, pc, c_black, c_red, c_lime, 0, true, false);
