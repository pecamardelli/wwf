// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_position(){
	if (!onFloor) {
		if (place_meeting(x,y,floorId)) {
			y = floorY;
			if (rebound) {
				play_random_sound(global.sounds.ringImpact.hard, undefined, 0.5);
				vspeed = 0;
				apply_force(90, 300);
				rebound = false;
			}
			else {
				if (spriteScript == dropped_sprites) {
					play_random_sound(global.sounds.bodyDrop, undefined, 0.5);
					canBeHit = false;
				}
				else {
					play_random_sound(global.sounds.steps.run, undefined, 0.5);
				}
				vspeed = 0;
				onFloor = true;
				rebound = true;
			}
		}
	}
	else floorY = y;
}