if invincibleTimer != 60 {
	invincibleTimer = 60;
	invincible = false;
}
scriptKillPlayer(invincibleTimer);
with(other) {
	instance_destroy();
}