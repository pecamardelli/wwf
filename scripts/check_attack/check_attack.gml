// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_attack() {
	var attacks = variable_struct_get(data.character, "attacks");
	
	if (!canAttack || !is_undefined(attackScript) || is_undefined(attacks)) return;
	
	if (buttonA) attack = variable_struct_get(attacks, ATTACK_MID_PUNCH);
	if (buttonX) attack = variable_struct_get(attacks, ATTACK_UPPERCUT);
	
	if (!is_undefined(attack)) execute_attack();
}