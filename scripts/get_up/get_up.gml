// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_up(){
	sprite_index = data.character.sprites.front.getUp;
	image_speed = 1;
	if (image_index == sprite_get_number(sprite_index)-1) {
		spriteScript = update_sprites;
	}
}