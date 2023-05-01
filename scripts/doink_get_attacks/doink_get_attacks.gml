// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function doink_get_attacks(){
	var attacks = {};
	
	// MID PUNCH
	variable_struct_set(attacks, ATTACK_MID_PUNCH, doink_get_mid_punch());
	
	// POWER PUNCH	
	variable_struct_set(attacks, ATTACK_POWER_PUNCH, doink_get_power_punch());
	
	// HEADBUTT
	variable_struct_set(attacks, ATTACK_HEADBUTT, doink_get_head_butt());
	
	// UPPERCUT
	variable_struct_set(attacks, ATTACK_UPPERCUT, doink_get_uppercut());
	
	// MID KICK
	variable_struct_set(attacks, ATTACK_MID_KICK, doink_get_mid_kick());
	
	
	// POWER KICK
	variable_struct_set(attacks, ATTACK_POWER_KICK, doink_get_power_kick());
	
	// CLAPPER
	variable_struct_set(attacks, ATTACK_DOWN_FWD, doink_get_clapper());
	
	return attacks;
}