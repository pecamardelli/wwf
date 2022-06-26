// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attack_hit(_attack){
	var attackType = variable_struct_get(_attack, "type");
	var attackHitScript = variable_struct_get(_attack, "hitScript");
	var damage = variable_struct_get(_attack, "damage");
	
	moveScript = undefined;
	
	// Hit sprites
	var positionSprites = variable_struct_get(data.character.sprites, position);
	var sprite = variable_struct_get(positionSprites.hits, attackType);
	if (!is_undefined(sprite)) sprite_index = sprite;
	
	animationEndScript = function () {
		moveScript = basic_movement;
		spriteScript = update_sprites;
	};
	
	// Play a sound defined in attack definition of the character.
	var hitSounds = variable_struct_get(other.attack.sounds, "hit");
	play_random_sound(hitSounds, other.audioEmitter);
	
	// Play a sound of the given type stored in attack definition of the character.
	var painSounds = variable_struct_get(data.character.sounds.painSounds, attackType);
	play_random_sound(painSounds);
	
	if (!is_undefined(attackHitScript)) attackHitScript();
	
	currentHealth -= damage;
	other.attack = undefined;
}