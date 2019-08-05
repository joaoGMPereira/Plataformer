/// @desc Draw Box

var halfWidth = width * 0.5;

//Draw the Box
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x - halfWidth - border, y - height - (border * 2), x + halfWidth + border, y, 15, 15, false);
draw_sprite(sprMarker, 0, x, y);
draw_set_alpha(1);

//Draw text

scriptDrawSetText(c_white, fSign, fa_center, fa_top);
draw_text(x, y - height - border, text_current);