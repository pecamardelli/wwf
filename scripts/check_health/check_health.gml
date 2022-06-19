// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_health(){
	if (currentHealth <= 0) {
		currentHealth = 0;
		healthOnBar = 0;
		moveScript = undefined;
		canBeHit = false;
		if (spriteScript != dropped_script && spriteScript != hit_floor_script) {
			spriteScript = dropped_script;
			var angle = arccos(-facing)*180/pi;
			apply_force(angle,300);
			onFloor = false;
		}
	}
	else healthOnBar = approach(healthOnBar,currentHealth,5);
}