/// @desc Check Has Weapon
if(hasWeapon) {
	myGun = instance_create_layer(x, y, "Gun", objEnemyGun);
	with(myGun) {
		owner = other.id;
	}
} else {
	myGun = noone;
}
