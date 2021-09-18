// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_sprites(){
// SPRITE CHANGE ON MOVEMENT
	if (is_undefined(target)) facing = FACING_RIGHT;
	else {
		facing = x <= target.x ? FACING_RIGHT : FACING_LEFT;
		if (lastFacing != facing && !running) {
			rotate = ROTATE_X;
			lastFacing = facing;
		}
		position = floorY > target.y ? POSITION_BACK : POSITION_FRONT;
		if (lastPosition != position && !running) {
			rotate = ROTATE_Y;
			lastPosition = position;
		}
	}
	
	if (running) {
		sprite_index = data.character.sprites.run;
		image_speed = 1;
	}
	//else if (!onFloor) {
	//	if (!is_undefined(notOnFloorScript)) notOnFloorScript();
	//}
	else {
		switch (position) {
			case POSITION_BACK:
				var imageSpeedSign = -1;
				var sprites = data.character.sprites.back;
				switch (rotate) {
					case ROTATE_X:
						sprite_index = data.character.sprites.rotateXBack;
						image_xscale = GAME_SCALE * -facing;
						break;
					case ROTATE_Y:
						sprite_index = data.character.sprites.rotateY;
						image_speed = 1;
						break;
				}
				break;
			case POSITION_FRONT:
				var imageSpeedSign = 1;
				var sprites = data.character.sprites.front;
				switch (rotate) {
					case ROTATE_X:
						sprite_index = data.character.sprites.rotateXFront;
						image_xscale = GAME_SCALE * -facing;
						break;
					case ROTATE_Y:
						sprite_index = data.character.sprites.rotateY;
						image_speed = -1;
						break;
				}
				break;
		}

		if (is_undefined(rotate)) {
			image_xscale = GAME_SCALE * facing;

			if (moveX) {
				sprite_index = sprites.walkHorizontal;
				image_speed = hspeed/maxHSpeed*facing;
			}

			if (moveY) {
				sprite_index = sprites.walkVertical;
				image_speed = vspeed/maxVSpeed*imageSpeedSign;
			}
	
			if (moveX && moveY) {
				if (sign(sin(direction*pi/180)*facing) == sign(cos(direction*pi/180))*imageSpeedSign) {
					sprite_index = sprites.walkDiagonal;
					image_speed = -vspeed/maxVSpeed*1.2;
				}
				else sprite_index = sprites.walkHorizontal;
			}
	
			if (!moveX && !moveY) {
				sprite_index = sprites.idle;
				image_speed = 1;
			}
		}
	}
}