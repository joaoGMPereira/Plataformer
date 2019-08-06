/// @description Insert description here
// You can write your code in this editor
countdown--;
if(countdown <= 0) {
	countdown = countdownRate
	repeat(5) {
			instance_create_layer(x, y, "Instances", objDebris);
	}
	with(other) {
		hp = hp + 5;
	}
}