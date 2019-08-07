#region //Collide with Enemy, and invincible timer
if invincibleTimer != 120 {
	invincibleTimer = 120;
	invincible = false;
}
scriptKillPlayer(invincibleTimer);
#endregion