// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function execute_attack() {
	if(!is_struct(attack)) return;
	
	if (!is_undefined(attack.preScript)) attack.preScript();
	
	moveScript = undefined;
	speed = 0;
	canAttack = false;
	
	//var collisionMaskWidth = attack.collisionMask.width * GAME_SCALE;
	//var collisionMaskHeight = attack.collisionMask.height * GAME_SCALE;
	//var collisionMaskX = x + attack.collisionMask.x * facing * GAME_SCALE;
	//var collisionMaskY = y - attack.collisionMask.y * GAME_SCALE;
	
	//attackCollisionMaskId = instance_create_depth(
	//	collisionMaskX,
	//	collisionMaskY,
	//	depth,
	//	ObjectAttackCollisionMask
	//);

	//attackCollisionMaskId.creatorId = id;
	
	//with (attackCollisionMaskId) {
	//	var newSprite = sprite_duplicate(spriteTransparent);
	//	sprite_collision_mask(
	//		newSprite,
	//		false,
	//		bboxkind_rectangular,
	//		sprite_get_width(spriteTransparent)/2 - collisionMaskWidth/2,
	//		sprite_get_height(spriteTransparent)/2 - collisionMaskHeight/2,
	//		sprite_get_width(spriteTransparent)/2 + collisionMaskWidth/2,
	//		sprite_get_height(spriteTransparent)/2 + collisionMaskHeight/2,
	//		1,
	//		0
	//	);
	//	sprite_index = newSprite;
	//	image_xscale = creatorId.facing;
	//}
	
	switch (position) {
		case POSITION_BACK: sprite_index = attack.sprites.back; break;
		case POSITION_FRONT: sprite_index = attack.sprites.front; break;
	}
	
	image_index = 0;
	image_speed = 1;
	attackScript = undefined;
	animationEndScript = finish_attack;
	
	var swingSounds = variable_struct_get(attack.sounds, "swing");
	play_random_sound(swingSounds);
	
	var attackgSounds = variable_struct_get(attack.sounds, "attack");
	play_random_sound(attackgSounds);
	
	if (!is_undefined(attack.postScript)) attack.postScript();
}