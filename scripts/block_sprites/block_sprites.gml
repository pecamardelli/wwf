// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function block_sprites(){
	var defenceSprite = variable_struct_get(data.character.sprites, "defence");
	var freezeFrame = 2;
	
	if (sprite_index != defenceSprite) {
		sprite_index = defenceSprite;
		moveScript = undefined;
	}
	else if (!buttonB) {
		if (image_index == freezeFrame) {
			image_speed = -1;
			animationEndScript = function () {
				canAttack = true;
				status = IDLE;
				image_speed = 1;
				moveScript = basic_movement;
				spriteScript = update_sprites;
			};
		}
	}
	else if (image_index >= freezeFrame) {
		image_speed = 0;
		image_index = freezeFrame;
		facing = x <= target.x ? FACING_RIGHT : FACING_LEFT;
		image_xscale = GAME_SCALE * facing;
	}
}