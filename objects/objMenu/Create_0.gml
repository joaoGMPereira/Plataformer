/// @desc GUI/Vars/Menu Setup
#macro SAVEFILE "Save.sav"

//Size of menu view
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiMargin = 32;

//First Position of menu
menuX = guiWidth + 300;
menuY = guiHeight - guiMargin + 100;

//Position that menu will stop moviment
menuXTarget = guiWidth - guiMargin + 100;
//Velocity of menu move to first position to target position
menuSpeed = 25;
menuFont = fMenu;
menuItemHeight = font_get_size(fMenu);

//With item is selected
menuCommitted = -1;

//Check if can change menu item
menuControl = true;


menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";

menuItems = array_length_1d(menu);
menuCursor = 2;

menuTop = menuY - ((menuItemHeight * 1.5) * menuItems);
