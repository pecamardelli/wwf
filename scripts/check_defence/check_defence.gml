// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_defence() {
	if (!is_undefined(attack)) return;
	
	var defenceSprite = variable_struct_get(data.character.sprites, "defence");
	var freezeFrame = 2;
	
	if (buttonB) {
		if (sprite_index != defenceSprite) audio_play_sound(sndSwing03,1,false);
		speed = 0;
		sprite_index = defenceSprite;
		moveScript = undefined;
		canAttack = false;
		if (image_index >= freezeFrame) {
			image_speed = 0;
			image_index = freezeFrame;
		}
	}
	else if (sprite_index == defenceSprite) {
		if (image_index == freezeFrame) {
			image_speed = -1;
			animationEndScript = function () {
				moveScript = basic_movement;
				canAttack = true;
				image_speed = 1;
			};
		}
	}
}