// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function key_actions(){
	if (is_undefined(target)) {
		facing = 1;
	}
	else {
		facing = x <= target.x ? 1 : -1;
		position = y > target.y ? POSITION_BACK : POSITION_FRONT;
	}
	
	moveX = left || right;
	moveY = up || down;
	
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
	
	if (buttonY && !running) {
		if (moveX) {
			image_xscale = GAME_SCALE*sign(hspeed);
			hspeed = data.character.runSpeed*sign(hspeed);
		}
		else {
			image_xscale = GAME_SCALE*facing;
			hspeed = data.character.runSpeed*facing;
		}
		
		running = true;
		sprite_index = data.character.sprites.run;
		image_speed = 1;
	}
}