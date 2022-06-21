// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hit_mid_punch(){
	var angle = arccos(-facing)*180/pi;
	apply_force(angle, other.creatorId.attack.force);
	
	moveScript = undefined;
	
	switch (position) {
		case POSITION_BACK: sprite_index = data.character.sprites.back.facePunched; break;	
		case POSITION_FRONT: sprite_index = data.character.sprites.front.facePunched; break;
	}
	
	animationEndScript = function () {
		switch (position) {
			case POSITION_BACK: sprite_index = data.character.sprites.back.idle; break;	
			case POSITION_FRONT: sprite_index = data.character.sprites.front.idle; break;
		}
		moveScript = basic_movement;
	};
	
	// Play a sound defined in attack definition of the character.
	var hitSounds = variable_struct_get(other.creatorId.attack.sounds, "hit");
	play_random_sound(hitSounds, other.creatorId.audioEmitter);
	
	// Play a sound defined in attack definition of the character.
	var painSounds = variable_struct_get(data.character.sounds.painSounds, ATTACK_MID_PUNCH);
	play_random_sound(painSounds);
	
	currentHealth -= other.creatorId.attack.damage;
}