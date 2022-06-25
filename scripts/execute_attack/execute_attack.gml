// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function execute_attack() {
	if(!is_struct(attack)) return;
	
	if (!is_undefined(attack.preScript)) attack.preScript();
	
	moveScript = undefined;
	speed = 0;
	canAttack = false;
	status = ATTACKING;
	
	switch (position) {
		case POSITION_BACK: sprite_index = attack.sprites.back; break;
		case POSITION_FRONT: sprite_index = attack.sprites.front; break;
	}
	
	image_index = 0;
	image_speed = 1;
	attackScript = undefined;
	animationEndScript = finish_attack;
	
	var swingSounds = variable_struct_get(attack.sounds, "swing");
	play_random_sound(swingSounds);
	
	var attackgSounds = variable_struct_get(attack.sounds, "attack");
	play_random_sound(attackgSounds);
	
	if (!is_undefined(attack.postScript)) attack.postScript();
}