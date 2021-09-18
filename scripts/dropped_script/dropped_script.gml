// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dropped_script(){
	sprite_index = data.character.sprites.dropped;
	if (image_index >= 7) image_speed = 0;
	if (onFloor) {
		hspeed = 0;
		spriteScript = hit_floor_script;
		image_speed = 1;
	}
}