/// @desc Control Menu

menuX += (menuXTarget - menuX) / menuSpeed;

if(menuControl) {
	if(keyboard_check_pressed(vk_up)) {
		menuCursor++;
		if(menuCursor >= menuItems) menuCursor = 0;
	}
	
	if(keyboard_check_pressed(vk_down)) {
		menuCursor--;
		if(menuCursor < 0) menuCursor = menuItems - 1;
	}
	
	if(keyboard_check_pressed(vk_enter)) {
		menuXTarget = guiWidth + 300;
		menuCommitted = menuCursor;
		scriptScreenShake(4, 30);
		menuControl = false
	}
}

if(menuX > guiWidth + 150) && (menuCommitted != -1) {
	switch(menuCommitted) {
		case 2: scriptSlideTransition(TransictionMode.NEXT);break;
		case 1: {
			if(!file_exists(SAVEFILE)) {
				scriptSlideTransition(TransictionMode.NEXT);
			} else {
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				scriptSlideTransition(TransictionMode.GOTO, target);
			}
		}
		break;
		case 0: game_end();
		break;
	}
}