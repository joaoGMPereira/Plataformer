/// @desc Equip Gun
global.hasGun = true;
instance_create_layer(objPlayer.x, objPlayer.y, "Gun", objGun);
instance_destroy();