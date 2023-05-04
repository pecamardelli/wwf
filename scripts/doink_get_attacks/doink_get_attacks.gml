// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function doink_get_attacks(){
	var attacks = getAttackDefinitions();
	var closeRangeAttacks = variable_struct_get(attacks, ATTACK_CLOSE_RANGE);
	var normalRangeAttacks = variable_struct_get(attacks, ATTACK_NORMAL_RANGE);
	var runningAttacks = variable_struct_get(attacks, ATTACK_RUNNING);
	
	// MID PUNCH
	variable_struct_set(normalRangeAttacks, ATTACK_MID_PUNCH, doink_get_mid_punch());
	
	// POWER PUNCH	
	variable_struct_set(normalRangeAttacks, ATTACK_POWER_PUNCH, doink_get_power_punch());
	
	// MID KICK
	variable_struct_set(normalRangeAttacks, ATTACK_MID_KICK, doink_get_mid_kick());
	
	// POWER KICK
	variable_struct_set(normalRangeAttacks, ATTACK_POWER_KICK, doink_get_power_kick());
	
	// HEADBUTT
	variable_struct_set(closeRangeAttacks, ATTACK_POWER_PUNCH, doink_get_head_butt());
	
	// UPPERCUT
	variable_struct_set(closeRangeAttacks[$(ATTACK_DOWN)], ATTACK_POWER_PUNCH, doink_get_uppercut());
	
	// DROP KICK
	variable_struct_set(runningAttacks, ATTACK_MID_KICK, doink_get_drop_kick());
	variable_struct_set(runningAttacks, ATTACK_MID_PUNCH, doink_get_drop_kick());
	
	// CLAPPER
	variable_struct_set(normalRangeAttacks[$(ATTACK_DOWN_FORWARD)], ATTACK_POWER_PUNCH, doink_get_clapper());
	
	return attacks;
}