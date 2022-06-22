// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_doink_attacks(){
	var attacks = {};
	
	var mid_punch = new Attack(
		ATTACK_MID_PUNCH,
		{ front: spriteDoinkMidPunchFront, back: spriteDoinkMidPunchBack },
		80,
		50,
		[4],
		{ x: 47, y: 92, width: 30, height: 10 },
		undefined,
		undefined,
		hit_mid_punch,
		{
			swing: [ sndSwing04, sndSwing05, sndSwing06 ,sndSwing07 ],
			hit: [ sndPunch09, sndPunch11 ],
			attack: [ sndDoinkAttack08, sndDoinkAttack09, sndDoinkAttack10 ]
		}
	);
	
	variable_struct_set(attacks, ATTACK_MID_PUNCH, mid_punch);
	
	var uppercut = new Attack(
		ATTACK_UPPERCUT,
		{
			front: spriteDoinkUppercut,
			back: spriteDoinkUppercut
		},
		1200,
		180,
		[4],
		{ x: 41, y: 82, width: 24, height: 21 },
		undefined,
		undefined,
		hit_uppercut,
		{
			swing: global.sounds.swing,
			hit: [ sndPunch04 ],
			attack: [ sndDoinkAttack08, sndDoinkAttack10, sndDoinkAttack11 ]
		}
	);
	
	variable_struct_set(attacks, ATTACK_UPPERCUT, uppercut);
	
	return attacks;
}