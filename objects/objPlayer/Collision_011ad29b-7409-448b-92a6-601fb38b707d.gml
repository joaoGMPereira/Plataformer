#region //Collide with Enemy, and invincible timer
if(global.hasGun == true) {
	if invincibleTimer != 10 {
		invincibleTimer = 10;
		invincible = false;
	}
	scriptKillPlayer(invincibleTimer);
}
#endregion