/// @desc Control Menu

//Show menu from menuX To menuXTarget 
menuX += (menuXTarget - menuX) / menuSpeed;


//Check if user can use menu
if(menuControl) {
	//Change item selected
	if(keyboard_check_pressed(vk_up)) {
		menuCursor++;
		if(menuCursor >= menuItems) menuCursor = 0;
	}
	
	if(keyboard_check_pressed(vk_down)) {
		menuCursor--;
		if(menuCursor < 0) menuCursor = menuItems - 1;
	}
	
	//move menu to out of room, shake camera
	if(keyboard_check_pressed(vk_enter)) {
		menuXTarget = guiWidth + 300;
		menuCommitted = menuCursor;
		scriptScreenShake(4, 30);
		menuControl = false
		audio_play_sound(snDeath, 10, false);
	}
	
	//check if mouse course is in y Axys of any item
	var mouseYGui = device_mouse_y_to_gui(0);
	if((mouseYGui < menuY) && (mouseYGui > menuTop)) {
		menuCursor = (menuY - mouseYGui) div(menuItemHeight * 1.5)
		//when press left button select item
		if(mouse_check_button_pressed(mb_left)) {
			menuXTarget = guiWidth + 300;
			menuCommitted = menuCursor;
			scriptScreenShake(4, 30);
			menuControl = false
			audio_play_sound(snDeath, 10, false);
		}
	}
}

//Go to selected item
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