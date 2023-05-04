// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getAttackDefinitions(){
	return {
		ATTACK_CLOSE_RANGE: getMovementAttackDefinitions(),
		ATTACK_NORMAL_RANGE: getMovementAttackDefinitions(),
		ATTACK_RUNNING: getAttackHitsDefinition(),
	};
}

function getMovementAttackDefinitions(){
	return {
		ATTACK_FORWARD: getAttackHitsDefinition(),
		ATTACK_DOUBLE_FORWARD: getAttackHitsDefinition(),
		ATTACK_BACKWARD: getAttackHitsDefinition(),
		ATTACK_DOUBLE_BACKWARD: getAttackHitsDefinition(),
		ATTACK_DOWN: getAttackHitsDefinition(),
		ATTACK_DOWN_FORWARD: getAttackHitsDefinition(),
		ATTACK_DOWN_BACKWARD: getAttackHitsDefinition(),
		ATTACK_DOUBLE_DOWN: getAttackHitsDefinition(),
	};
}

function getAttackHitsDefinition() {
	return {
		ATTACK_POWER_PUNCH: undefined,
		ATTACK_MID_PUNCH: undefined,
		ATTACK_POWER_KICK: undefined,
		ATTACK_MID_KICK: undefined
	};
}