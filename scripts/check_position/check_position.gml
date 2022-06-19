// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_position(){
	if (!onFloor) {
		apply_gravity();
		if (y >= floorY) {
			y = floorY;
			if (rebound) {
				var angle = 90 + 12 * facing;
				apply_force(angle,600);
				rebound = false;
			}
			else {
				vspeed = 0;
				onFloor = true;
				rebound = true;
			}
		}
	}
	else floorY = y;
}