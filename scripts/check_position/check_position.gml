// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_position(){
	if (!onFloor) {
		apply_gravity();
		if (y >= floorY) {
			onFloor = true;
			vspeed = 0;
			y = floorY;
		}
	}
	else floorY = y;
}