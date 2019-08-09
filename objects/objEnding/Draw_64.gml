draw_set_color(c_black);
draw_rectangle(-1, 0, RESWIDTH, 128, false);
draw_rectangle(-1, RESHEIGHT - 128, RESWIDTH, RESHEIGHT, false);


scriptDrawSetText(c_black, fSign, fa_center, fa_top);
draw_text(RESWIDTH * 0.5 + 2, RESWIDTH * 0.3 + 2, text);
draw_set_color(c_white);
draw_text(RESWIDTH * 0.5, RESWIDTH * 0.3, text);
