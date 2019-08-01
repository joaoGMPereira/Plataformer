/// @description Insert description here
// You can write your code in this editor
var pc;
pc = (hp / maxHP) * 100;

draw_sprite(sprite_index, -1, x, y);
draw_healthbar(x - 10, y - 30, x - 10 + 20, y - 30 + 4, pc, c_black, c_red, c_lime, 0, true, false);