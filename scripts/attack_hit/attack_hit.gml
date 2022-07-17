// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attack_hit(_attack){
	var attackType = variable_struct_get(_attack, "type");
	var damage = variable_struct_get(_attack, "damage");
	
	moveScript = undefined;
	
	var hitScript = variable_struct_get(_attack, "hitScript");
	if (!is_undefined(hitScript)) hitScript();
	
	// Hit sprites
	sprite_index = data.character.sprites[$position].hits[$other.attack.type];
	image_index = 0;
	
	animationEndScript = function () {
		moveScript = basic_movement;
		spriteScript = update_sprites;
	};
	
	// Play a sound defined in attack definition of the character.
	var hitSounds = variable_struct_get(other.attack.sounds, "hit");
	audioEmitterSoundId = play_random_sound(hitSounds, other.audioEmitter,1);
	
	// Play a sound of the given type stored in attack definition of the character.
	var painSounds = variable_struct_get(data.character.sounds.painSounds, attackType);
	if (!is_undefined(voiceEmitterSoundId) && audio_is_playing(voiceEmitterSoundId)) {
		audio_stop_sound(voiceEmitterSoundId);
	}
	voiceEmitterSoundId = play_random_sound(painSounds, voiceEmitter, 1);
	
	currentHealth -= damage;
	
	if (currentHealth > 0) {
		var angle = _attack.forceAngleScript();
		var force = other.attack.force;
	}
	else {
		var angle = 90 + 30 * facing;
		var force = 600;
	}
	apply_force(angle,force);
	
	other.attack = undefined;
}