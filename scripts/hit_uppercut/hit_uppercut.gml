// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hit_uppercut(){
	var angle = 90 + random_range(3,12) * facing;
	apply_force(angle,other.attack.damage);
	moveScript = undefined;
	spriteScript = dropped_script;
	
	with (other) {
		alarmScript = function () { image_speed = 1; }
		image_speed = 0;
		image_index = attack.hitFrames[0] - 1;
		apply_force(arccos(-facing)*180/pi, random_range(8,15));
		alarm_set(0, 0.2 * room_speed);
	}
}