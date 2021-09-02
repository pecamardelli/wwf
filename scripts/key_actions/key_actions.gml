// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function key_actions(){
	if (!canMove || attacking) return;
	
	if (right) {
		if (hspeed < 0) hspeed = 0;
		hspeed = maxHSpeed//approach(hspeed,maxHSpeed,0.1);
	}
	else if (left) {
		if (hspeed > 0) hspeed = 0;
		hspeed = -maxHSpeed//approach(hspeed,-maxHSpeed,0.1);
	}
	
	if (up) {
		if (vspeed > 0) vspeed = 0;
		vspeed = -maxVSpeed//approach(vspeed,-maxVSpeed,0.1);
	}
	else if (down) {
		if (vspeed < 0) vspeed = 0;
		vspeed =  maxVSpeed//approach(vspeed,maxVSpeed,0.1);
	}
}