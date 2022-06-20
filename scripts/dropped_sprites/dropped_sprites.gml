// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dropped_sprites(){
	sprite_index = data.character.sprites.dropped;
	if (image_index >= 7) {
		image_index = 7;
		if (onFloor) {
			hspeed = 0;
			droppedTime = current_time;
			spriteScript = hit_floor_script;
			image_speed = 1;
		}
	}
}