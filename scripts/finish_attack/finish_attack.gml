// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function finish_attack(){
	canAttack = true;
	moveScript = basic_movement;
	attack = undefined;
	if (!is_undefined(attackCollisionMaskId)) instance_destroy(attackCollisionMaskId);
	attackCollisionMaskId = undefined;
}