// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attack_mid_punch(){
	var sprites = data.character.sprites;
	moveScript = undefined;
	speed = 0;
	canAttack = false;
	
	switch (position) {
		case POSITION_BACK: sprite_index = sprites.back.midPunch; break;
		case POSITION_FRONT: sprite_index = sprites.front.midPunch; break;
	}
	
	image_index = 0;
	image_speed = 1;
	attackScript = undefined;
	animationEndScript = finish_attack;
}