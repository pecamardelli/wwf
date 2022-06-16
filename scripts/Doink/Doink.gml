// Script assets have changed for v2.3.0 see
// https =//help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Doink() constructor {
	name = "Doink The Clown";
	walkSpeed = 5;
	runSpeed = 10;
	sprites = {
		front: {
			idle: spriteDoinkIdleFront,
			walkHorizontal: spriteDoinkWalkHorizontalFront,
			walkVertical: spriteDoinkWalkVerticalFront,
			walkDiagonal: spriteDoinkWalkDiagonalFront,
			rotateX: spriteDoinkRotateXFront,
			rotateY: spriteDoinkRotateYFront,
			facePunched: spriteDoinkFacePunchedFront,
			getUp: spriteDoinkGetUpFront
		},
		back: {
			idle: spriteDoinkIdleBack,
			walkHorizontal: spriteDoinkWalkHorizontalBack,
			walkVertical: spriteDoinkWalkVerticalBack,
			walkDiagonal: spriteDoinkWalkDiagonalBack,
			rotateX: spriteDoinkRotateXBack,
			rotateY: spriteDoinkRotateYBack,
			facePunched: spriteDoinkFacePunchedBack,
			getUp: spriteDoinkGetUpFront
		},
		run: spriteDoinkRun,
		dropped: spriteDoinkDropped,
		uppercut: spriteDoinkUppercut
	};
	
	attacks = {};
	
	var mid_punch = new Attack(
		{
			front: spriteDoinkMidPunchFront,
			back: spriteDoinkMidPunchBack
		},
		80,
		[5],
		undefined,
		undefined,
		hit_mid_punch,
		{
			swing: [ snd_swing_04, snd_swing_05, snd_swing_06 ,snd_swing_07 ],
			hit: [ snd_punch_06, snd_punch_08, snd_punch_09, snd_punch_11 ]
		}
	);
	
	variable_struct_set(attacks, ATTACK_MID_PUNCH, mid_punch);
	
	var uppercut = new Attack(
		{
			front: spriteDoinkUppercut,
			back: spriteDoinkUppercut
		},
		1200,
		[5],
		undefined,
		undefined,
		hit_uppercut,
		{
			swing: global.sounds.swing,
			hit: [ snd_punch_04 ]
		}
	);
	
	variable_struct_set(attacks, ATTACK_UPPERCUT, uppercut);
}