// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_health(){
	if (currentHealth <= 0) {
		currentHealth = 0;
		healthOnBar = 0;
		
		if (spriteScript != dropped_script && spriteScript != hit_floor_script) {
			spriteScript = dropped_script;
			var angle = arccos(-facing)*180/pi;
			apply_force(angle,200);
			onFloor = false;
		}
		
		if (status < READY_FOR_TERMINATION) status = READY_FOR_TERMINATION;
	}
	else healthOnBar = approach(healthOnBar,currentHealth,5);
}