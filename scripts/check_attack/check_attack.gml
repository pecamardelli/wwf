// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_attack() {
	var attacks = variable_struct_get(data.character, "attacks");
	
	if (!canAttack || !is_undefined(attackScript) || is_undefined(attacks)) return;
	
	var movementCombination = undefined;
	
	if(forward) movementCombination = ATTACK_FORWARD;
	else if(doubleForward) movementCombination = ATTACK_DOUBLE_FORWARD;
	else if(backward) movementCombination = ATTACK_BACKWARD;
	else if(doubleBackward) movementCombination = ATTACK_DOUBLE_BACKWARD;
	else if(down) movementCombination = ATTACK_DOWN;
	else if(downForward) movementCombination = ATTACK_DOWN_FORWARD;
	else if(downBackward) movementCombination = ATTACK_DOWN_BACKWARD;
	else if(doubleDown) movementCombination = ATTACK_DOUBLE_DOWN;
	
	if (!is_undefined(movementCombination)) attacks = variable_struct_get(attacks, movementCombination);
	
	var attackType = undefined;
	
	if(buttonA) attackType = ATTACK_MID_PUNCH;
	else if(buttonC) attackType = ATTACK_MID_KICK;
	else if(buttonX) attackType = ATTACK_POWER_PUNCH;
	else if(buttonZ) attackType = ATTACK_POWER_KICK;
	
	if(!is_undefined(attackType)) {
		var attack = variable_struct_get(attacks, attackType);
		if (!is_undefined(attack)) execute_attack();
	}
}