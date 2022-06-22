// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hit_uppercut(){
	var angle = 90 + random_range(3,12) * facing;
	apply_force(angle,other.attack.force);
	moveScript = undefined;
	spriteScript = dropped_sprites;
	
	// Play a sound defined in attack definition of character.
	var hitSounds = variable_struct_get(other.attack.sounds, "hit");
	play_random_sound(hitSounds);
	
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
	currentHealth -= other.attack.damage;
}