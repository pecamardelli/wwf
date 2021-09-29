// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_attack(){
	var attacks = variable_struct_get(data.character, "attacks");
	if (!canAttack || !is_undefined(attackScript) || is_undefined(attacks)) return;
	
	if (buttonA) attackScript = variable_struct_get(attacks, BUTTON_A_ATTACK);
}