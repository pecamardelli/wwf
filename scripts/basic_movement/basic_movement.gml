// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function basic_movement(){
	if (!onFloor) return;
	moveX = left || right;
	moveY = up || down;
	
	if (right) hspeed = maxHSpeed;
	else if (left) hspeed = -maxHSpeed;
	else  hspeed = 0;
	
	if (up) {
		vspeed = -maxVSpeed;
	}
	else if (down) {
		vspeed = maxVSpeed;
	}
	else vspeed = 0;
	
	if (buttonY) moveScript = run;
	
	if (!moveX && !moveY) hspeed = approach(hspeed,0,0.1);
}