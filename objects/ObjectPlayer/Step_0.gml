/// @description Insert description here
// You can write your code in this editor

if (y > target.y) position = POSITION_BACK;
else position = POSITION_FRONT;

init_keys();
get_keys();
key_actions();
check_attack();

if (!attacking) {
	// SPRITE CHANGE ON MOVEMENT
	var facing = x <= target.x ? 1 : -1;
	var movingX = left || right;
	var movingY = up || down;

	image_xscale = GAME_SCALE * facing;

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

	if (movingX) {
		running = false;
		sprite_index = sprites.walkHorizontal;
		image_speed = hspeed/maxHSpeed;
	}

	if (movingY) {
		sprite_index = sprites.walkVertical;
		image_speed = vspeed/maxVSpeed*imageSpeedSign;
	}

	if (buttonY) {
		running = true;
		sprite_index = data.character.sprites.run;
		image_speed = 1;
		if (left) { 
			image_xscale = -GAME_SCALE;
			hspeed = -data.character.runSpeed;
		}
		else {
			image_xscale = GAME_SCALE;
			hspeed = data.character.runSpeed;
		}
	}
	
	if (movingX && movingY) {
		if (sign(sin(direction*pi/180)) == sign(cos(direction*pi/180))*imageSpeedSign) {
			sprite_index = sprites.walkDiagonal;
			image_speed = -vspeed/maxVSpeed*1.2;
		}
		else sprite_index = sprites.walkHorizontal;
	}
	
	if (!movingX && !running) hspeed = 0//approach(hspeed,0,10);
	if (!movingY && !running) vspeed = 0//approach(vspeed,0,10);
	
	if (!movingX && !movingY && !running) {
		sprite_index = sprites.idle;
		image_speed = 1;
	}
}