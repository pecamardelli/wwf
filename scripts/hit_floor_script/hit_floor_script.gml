// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hit_floor_script(){
	if (image_index == sprite_get_number(sprite_index)) {
		image_speed = 0;
		if (is_undefined(alarmScript)) {
			alarmScript = function () { spriteScript = get_up };
			alarm_set(0,1*room_speed);
		}
	}
}

