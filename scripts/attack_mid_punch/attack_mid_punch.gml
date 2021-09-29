// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attack_mid_punch(){
	if (sprite_index != data.character.sprites.back.midPunch && sprite_index != data.character.sprites.front.midPunch) {
		moveScript = undefined;
		speed = 0;
		canAttack = false;
		switch (position) {
			case POSITION_BACK: sprite_index = data.character.sprites.back.midPunch; break;
			case POSITION_FRONT: sprite_index = data.character.sprites.front.midPunch; break;
		}
		image_index = 0;
	}
}