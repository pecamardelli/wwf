// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_attack() {
	var attacks = variable_struct_get(data.character, "attacks");
	
	if (!canAttack || !is_undefined(attackScript) || is_undefined(attacks)) return;
	
	var movementCombination = undefined;
	var specialAttacks = undefined;
	var attackType = undefined;
	
	if(forward) movementCombination = ATTACK_FORWARD;
	else if(doubleForward) movementCombination = ATTACK_DOUBLE_FORWARD;
	else if(backward) movementCombination = ATTACK_BACKWARD;
	else if(doubleBackward) movementCombination = ATTACK_DOUBLE_BACKWARD;
	else if(down) movementCombination = ATTACK_DOWN;
	else if(downForward) movementCombination = ATTACK_DOWN_FORWARD;
	else if(downBackward) movementCombination = ATTACK_DOWN_BACKWARD;
	else if(doubleDown) movementCombination = ATTACK_DOUBLE_DOWN;
	
	if(midPunch) attackType = ATTACK_MID_PUNCH;
	else if(midKick) attackType = ATTACK_MID_KICK;
	else if(powerPunch) attackType = ATTACK_POWER_PUNCH;
	else if(powerKick) attackType = ATTACK_POWER_KICK;
	
	if(is_undefined(attackType)) return;
	
	if(!is_undefined(movementCombination)) {
		specialAttacks = variable_struct_get(attacks, movementCombination);
		attack = variable_struct_get(specialAttacks, attackType);
	}
	
	if(is_undefined(attack)) {
		attack = variable_struct_get(attacks, attackType);
	}
		
	if (!is_undefined(attack)) execute_attack();
}