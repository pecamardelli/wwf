// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function key_actions(){
	if (right) hspeed = approach(hspeed,maxHSpeed,0.1);
	else if (left) hspeed = approach(hspeed,-maxHSpeed,0.1);
	
	if (up) vspeed = approach(vspeed,-maxVSpeed,0.1);
	else if (down) vspeed = approach(vspeed,maxVSpeed,0.1);
	
	var movingX = left || right;
	var movingY = up || down;
	
	if (movingX) {
		if (sprite_index != spriteDoinkWalkHorizontalFront) sprite_index = spriteDoinkWalkHorizontalFront;
		image_speed = hspeed/maxHSpeed;
	}
	
	if (movingY) {
		if (sprite_index != spriteDoinkWalkVerticalFront) sprite_index = spriteDoinkWalkVerticalFront;
		image_speed = vspeed/maxVSpeed;
	}
	
	if (movingX && movingY) {
		sprite_index = spriteDoinkWalkDiagonalFront;
		image_speed = -vspeed/maxVSpeed*1.2;
	}
	
	if (!movingX) hspeed = approach(hspeed,0,1);
	if (!movingY) vspeed = approach(vspeed,0,1);
	
	if (!movingX && !movingY) {
		sprite_index = spriteDoinkIdleFront;
		image_speed = 1;
	}
}