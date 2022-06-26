// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hit_uppercut() {
	moveScript = undefined;
	spriteScript = dropped_sprites;
	status = DROPPED;
	
	// Play a random punch sound along with predefined sound.
	var globalPunchSounds = variable_struct_get(global.sounds, "punches");
	play_random_sound(globalPunchSounds);
	
	with (other) {
		alarmScript = function () { image_speed = 1; }
		image_speed = 0;
		image_index = attack.hitFrames[0];
		apply_force(arccos(-facing)*180/pi, random_range(8,15));
		alarm_set(0, 0.2 * room_speed);
	}
	
	if (currentHealth > 0) {
		var angle =  90 + random_range(3,12) * facing;
		apply_force(angle,other.attack.force);
	}
	else {
		var angle = 90 + 30 * facing;
		apply_force(angle,600);
	}
}