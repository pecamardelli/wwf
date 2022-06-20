// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_health(){
	if (currentHealth <= 0) {
		currentHealth = 0;
		healthOnBar = 0;
		moveScript = undefined;
		canBeHit = false;
		terminate = true;
		
		if (spriteScript != dropped_script && spriteScript != hit_floor_script) {
			spriteScript = dropped_script;
			var angle = arccos(-facing)*180/pi;
			apply_force(angle,200);
			onFloor = false;
		}
		
		if (terminate && alarm_get(0) < 0) {
			alarmScript = function() {
				endOfLifeScript = function() {
					image_alpha = approach(image_alpha,0,0.02);
					if (image_alpha <= 0) instance_destroy();
				}
			}
			alarm_set(0,room_speed*3);
			terminate = false;
		}
	}
	else healthOnBar = approach(healthOnBar,currentHealth,5);
}