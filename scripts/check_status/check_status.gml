// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_status(){
	switch (status) {
		case READY_FOR_TERMINATION:
			moveScript = undefined;
			canBeHit = false;
			
			alarmScript = function() {
				endOfLifeScript = function() {
					image_alpha = approach(image_alpha,0,0.02);
					if (image_alpha <= 0) instance_destroy();
				}
			}
			alarm_set(0,room_speed*3);
			
			status = ABOUT_TO_TERMINATE;
			break;
		default: break;
	}
}