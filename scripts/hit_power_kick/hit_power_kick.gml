// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hit_power_kick(){
	var angle = 90 + random_range(70,80) * facing;
	apply_force(angle,other.attack.force);
	
	moveScript = undefined;
	spriteScript = function () {
		if (!onFloor && image_index >= 2) image_speed = 0;
		else image_speed = 1;
	}
	
	switch (position) {
		case POSITION_BACK: sprite_index = data.character.sprites.back.facePunched; break;	
		case POSITION_FRONT: sprite_index = data.character.sprites.front.facePunched; break;
	}
	
	animationEndScript = function () {
		moveScript = basic_movement;
		spriteScript = update_sprites;
	};
	
	// Play a sound defined in attack definition of the character.
	var hitSounds = variable_struct_get(other.attack.sounds, "hit");
	play_random_sound(hitSounds, audioEmitter);
	
	// Play a sound defined in attack definition of the character.
	var painSounds = variable_struct_get(data.character.sounds.painSounds, other.attack.type);
	play_random_sound(painSounds, audioEmitter);
	
	currentHealth -= other.attack.damage;
	other.attack = undefined;
}