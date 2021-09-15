// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_movement(){
	moveX = left || right;
	moveY = up || down;
	
	if (!canMove || attacking) return;
	
	if (right) {
		if (running) {
			if (hspeed < 0) running = false;
		}
		else hspeed = maxHSpeed;
	}
	else if (left) {
		if (running) {
			if (hspeed > 0) running = false;
		}
		else hspeed = -maxHSpeed;
	}
	
	if (up) vspeed = -maxVSpeed;
	else if (down) vspeed =  maxVSpeed;
	else vspeed = 0;
	
	if (buttonY) {
		if (moveX) {
			image_xscale = GAME_SCALE*sign(hspeed);
			hspeed = data.character.runSpeed*sign(hspeed);
		}
		else {
			image_xscale = GAME_SCALE*facing;
			hspeed = data.character.runSpeed*facing;
		}
		running = true;
	}
}