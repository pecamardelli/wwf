// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_attack() {
	var attacks = variable_struct_get(data.character, "attacks");
	
	if (!canAttack || !is_undefined(attackScript) || is_undefined(attacks)) return;
	
	if (buttonA) attack = variable_struct_get(attacks, ATTACK_MID_PUNCH);
	if (buttonC) attack = variable_struct_get(attacks, ATTACK_MID_KICK);
	if (buttonX) {
		if (down) {
			attack = variable_struct_get(attacks, ATTACK_UPPERCUT);
			if (!is_undefined(attack)) attack = variable_struct_get(attacks, ATTACK_POWER_PUNCH);
		}
		else if (right) attack = variable_struct_get(attacks, ATTACK_DOWN_FWD);
		else attack = variable_struct_get(attacks, ATTACK_POWER_PUNCH);
	}
	if (buttonZ) attack = variable_struct_get(attacks, ATTACK_POWER_KICK);
	
	if (!is_undefined(attack)) execute_attack();
}