// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hit_mid_kick(){
	spriteScript = function () {
		if (!onFloor && image_index >= 3) image_speed = 0;
		else image_speed = 1;
	}
	rebound = false;
	
	moveScript = undefined;
	
	switch (position) {
		case POSITION_BACK: sprite_index = data.character.sprites.back.ballsKicked; break;	
		case POSITION_FRONT: sprite_index = data.character.sprites.front.ballsKicked; break;
	}
	
	animationEndScript = function () {
		moveScript = basic_movement;
		spriteScript = update_sprites;
	};
	
	// Play a sound defined in attack definition of the character.
	var hitSounds = variable_struct_get(other.attack.sounds, "hit");
	play_random_sound(hitSounds, other.audioEmitter);
	
	// Play a sound defined in attack definition of the character.
	var painSounds = variable_struct_get(data.character.sounds.painSounds, ATTACK_MID_KICK);
	play_random_sound(painSounds);
	
	currentHealth -= other.attack.damage;
	
	if (currentHealth > 0) {
		var angle = 90 + 30 * facing;
		apply_force(angle,other.attack.force);
	}
	else {
		var angle = 90 + 30 * facing;
		apply_force(angle,600);
	}
	
	other.attack = undefined;
}