// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_sprites(){
// SPRITE CHANGE ON MOVEMENT
	if (is_undefined(target)) {
		var facing = 1;
	}
	else {
		var facing = x <= target.x ? 1 : -1;
		var position = y > target.y ? POSITION_BACK : POSITION_FRONT;
	}
	
	var moveX = left || right;
	var moveY = up || down;

	if (!running) image_xscale = GAME_SCALE * facing;

	switch (position) {
		case POSITION_BACK:
			var imageSpeedSign = -1;
			var sprites = data.character.sprites.back;
			break;
		case POSITION_FRONT:
			var imageSpeedSign = 1;
			var sprites = data.character.sprites.front;
			break;
	}

	if (moveX) {
		running = false;
		sprite_index = sprites.walkHorizontal;
		image_speed = hspeed/maxHSpeed*facing;
	}

	if (moveY && !running) {
		sprite_index = sprites.walkVertical;
		image_speed = vspeed/maxVSpeed*imageSpeedSign;
	}

	//if (buttonY && !running) {
	//	if (moveX) {
	//		image_xscale = GAME_SCALE*sign(hspeed);
	//		hspeed = data.character.runSpeed*sign(hspeed);
	//	}
	//	else {
	//		image_xscale = GAME_SCALE*facing;
	//		hspeed = data.character.runSpeed*facing;
	//	}
		
	//	running = true;
	//	sprite_index = data.character.sprites.run;
	//	image_speed = 1;
	//}
	
	if (moveX && moveY) {
		if (sign(sin(direction*pi/180)*facing) == sign(cos(direction*pi/180))*imageSpeedSign) {
			sprite_index = sprites.walkDiagonal;
			image_speed = -vspeed/maxVSpeed*1.2;
		}
		else sprite_index = sprites.walkHorizontal;
	}
	
	if (!moveX && !running) hspeed = 0//approach(hspeed,0,10);
	if (!moveY && !running) vspeed = 0//approach(vspeed,0,10);
	
	if (!moveX && !moveY && !running) {
		sprite_index = sprites.idle;
		image_speed = 1;
	}
}