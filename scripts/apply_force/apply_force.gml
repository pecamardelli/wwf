// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function apply_force(direction,magnitude){
	hspeed = (magnitude / 235 * cos(direction*pi/180)) * 5;
	vspeed = (magnitude  / 235 * abs(sin(direction*pi/180))) * -5;
	if (abs(sin(direction*pi/180)) > 0) {
		onFloor = false;
		y--;
	}
	//if (is_undefined(impulseX)) impulseX = 0;
	//if (is_undefined(impulseY)) impulseY = 0;
	//forceAppliedX = magnitude * cos(direction*pi/180);
	//forceAppliedY = magnitude * abs(sin(direction*pi/180));
	//impulseX = x + impulseX + forceAppliedX;
	//// We don't expect an impulse to the floor. Gravity will take care of that.
	//impulseY = y + impulseY + magnitude * abs(sin(direction*pi/180));
}