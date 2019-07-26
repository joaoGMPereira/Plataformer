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
		case 2: default: scriptSlideTransition(TransictionMode.NEXT);break;
		case 0: game_end();
		break;
	}
}