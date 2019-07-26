/// @desc Move to next room

with(objPlayer) {

	if(hasControl) {
		hasControl = false;
		scriptSlideTransition(TransictionMode.GOTO,other.target);
		
	}
}