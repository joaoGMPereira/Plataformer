#region //Collide with Enemy, and invincible timer
if invincibleTimer != 60 {
	invincibleTimer = 60;
	invincible = false;
}
scriptKillPlayer(invincibleTimer);
with(other) {
	instance_destroy();
}
#endregion