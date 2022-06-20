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
		uppercut: spriteDoinkUppercut,
		defence: spriteDoinkDefence
	};
	
	attacks = get_doink_attacks();
	sounds = {};
	
	var painSounds = {};
	variable_struct_set(painSounds, ATTACK_MID_PUNCH, [ sndDoinkPain08, sndDoinkPain11 ]);
	variable_struct_set(sounds, "painSounds", painSounds);
}