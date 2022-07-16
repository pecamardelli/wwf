// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_target(){
	if (is_undefined(target)) return;
	
	targetXDistance = target.x - x;
	targetYDistance = target.y - y;
	
	targetXRange = false;
	targetYRange = false;

	if (abs(targetXDistance) <= CHARACTER_X_DISTANCE) targetXRange = true;
	if (abs(targetYDistance) <= CHARACTER_Y_DISTANCE) targetYRange = true;
}