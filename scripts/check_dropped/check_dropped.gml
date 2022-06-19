// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_dropped(){
	if (!onFloor) return;
	if (sprite_index != data.character.sprites.dropped) return;
	if (image_index != sprite_get_number(sprite_index)) return;
	if (current_time - droppedTime < maxDroppedTime) return;
	
	if (currentHealth > 0) spriteScript = get_up;
}