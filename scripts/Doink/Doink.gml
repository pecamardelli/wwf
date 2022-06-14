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
			midPunch: spriteDoinkMidPunchFront,
			getUp: spriteDoinkGetUpFront
		},
		back: {
			idle: spriteDoinkIdleBack,
			walkHorizontal: spriteDoinkWalkHorizontalBack,
			walkVertical: spriteDoinkWalkVerticalBack,
			walkDiagonal: spriteDoinkWalkDiagonalBack,
			rotateX: spriteDoinkRotateXBack,
			rotateY: spriteDoinkRotateYBack,
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
		10,
		[5],
		undefined,
		undefined,
		undefined
	);
	
	variable_struct_set(attacks, ATTACK_MID_PUNCH, mid_punch);
	
	var uppercut = new Attack(
		{
			front: spriteDoinkUppercut,
			back: spriteDoinkUppercut
		},
		40,
		[5],
		undefined,
		undefined,
		hola
	);
	
	variable_struct_set(attacks, ATTACK_UPPERCUT, uppercut);
}

function hola() {
	apply_force(random_range(95,105),random_range(800,1000));
	moveScript = undefined;
	spriteScript = dropped_script;
}