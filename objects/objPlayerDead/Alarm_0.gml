/// @desc Reset gamespeed + Room
global.playerHP = global.playerMaxHP;
game_set_speed(60, gamespeed_fps);
scriptSlideTransition(TransictionMode.GOTO, room);

