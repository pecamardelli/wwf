// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_position(){
	if (!onFloor) {
		apply_gravity();
		if (y >= floorY) {
			y = floorY;
			if (rebound) {
				play_random_sound(global.sounds.ringImpact.hard);
				apply_force(90 + 5*facing, 300);
				rebound = false;
			}
			else {
				play_random_sound(global.sounds.ringImpact.soft);
				vspeed = 0;
				onFloor = true;
				rebound = true;
			}
		}
	}
	else floorY = y;
}