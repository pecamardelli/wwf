// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_attack(){
	if (!canAttack || !is_undefined(attackScript)) return;
	if (buttonA) attackScript = attack_mid_punch;
}