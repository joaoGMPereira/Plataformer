/// @desc Create Ending Game

gunSprite = layer_sprite_get_id("TitleAssets", "graphicsGun");
if (global.hasGun == true) && (global.kills > 0) {
	endText[0] = "And on this day our hero had slain " + string(global.kills) + " people.";
	if(global.kills == 1) endText[0] = "And on this day our hero killed a guy for no reason.";
	endText[1] = "But some of those people had guns too, so...";
	endText[2] = "He was saving the world, or something.";
	endText[3] = "Regardless, he was arrested to days later spent the rest of his life in prison.";
	endText[4] = "The defense team tried to argue that the sexy recoil effects and hit flashes were to blame,\nbut to no avail.";
	endText[5] = "The parker ranger would later state she was \"not angry, just disappointed.\"";
	endText[6] = "The end.";
	
	
} else {
	endText[0] = "On this day our hero had a wonderful, serene walk through a national park\nand didn't even murder anyone.";
	endText[1] = "They reported a discarded firearm to the local authorities\nand were thanked profusely for assiting in an ongoing criminal investigation.";
	endText[2] = "And all it took behaviour that outside of a video game context \none would hope is completely normal.";
	endText[3] = "Who would have thought?";
	endText[4] = "The end.";
}

roomBuffer = 32;
lettersSpeed = 0.5;
letters = 0;
currentline = 0;
length = string_length(endText[currentline]);
text = "";