// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function execute_attack() {
	if(!is_struct(attack)) return;
	
	moveScript = undefined;
	vspeed = 0;
	canAttack = false;
	status = ATTACKING;
	
	sprite_index = attack.sprites[$position];	
	image_index = 0;
	image_speed = 1;
	
	attackScript = undefined;
	animationEndScript = finish_attack;
	
	if(!is_undefined(attack.attackScript)) attack.attackScript();
	
	var swingSounds = variable_struct_get(attack.sounds, "swing");
	play_random_sound(swingSounds);
	
	var attackgSounds = variable_struct_get(attack.sounds, "attack");
	play_random_sound(attackgSounds);
}