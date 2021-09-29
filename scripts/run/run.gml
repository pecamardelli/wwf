// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function run(){
	if ((right && hspeed < 0) || (left && hspeed > 0)) moveScript = basic_movement;
	
	if (up) vspeed = -maxVSpeed;
	else if (down) vspeed = maxVSpeed;
	else vspeed = 0;
	
	if (moveX) {
		image_xscale = GAME_SCALE*sign(hspeed);
		hspeed = data.character.runSpeed*sign(hspeed);
	}
	else {
		image_xscale = GAME_SCALE*facing;
		hspeed = data.character.runSpeed*facing;
	}
}