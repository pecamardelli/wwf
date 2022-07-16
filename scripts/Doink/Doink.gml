// Script assets have changed for v2.3.0 see
// https =//help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Doink() constructor {
	name = "Doink The Clown";
	weight = 243;
	walkSpeed = 5;
	runSpeed = 10;
	
	sprites = {
		POSITION_FRONT: {
			idle: spriteDoinkIdleFront,
			walkHorizontal: spriteDoinkWalkHorizontalFront,
			walkVertical: spriteDoinkWalkVerticalFront,
			walkDiagonal: spriteDoinkWalkDiagonalFront,
			ROTATE_X: spriteDoinkRotateXFront,
			ROTATE_Y: spriteDoinkRotateYFront,
			getUp: spriteDoinkGetUpFront,
			hits: {
				ATTACK_MID_PUNCH: spriteDoinkFacePunchedFront,
				ATTACK_POWER_PUNCH: spriteDoinkFacePunchedFront,
				ATTACK_MID_KICK: spriteDoinkBallsKicked,
				ATTACK_POWER_KICK: spriteDoinkFacePunchedFront,
				ATTACK_UPPERCUT: spriteDoinkDropped,
				ATTACK_DOWN_FWD: spriteDoinkFacePunchedFront
			}
		},
		POSITION_BACK: {
			idle: spriteDoinkIdleBack,
			walkHorizontal: spriteDoinkWalkHorizontalBack,
			walkVertical: spriteDoinkWalkVerticalBack,
			walkDiagonal: spriteDoinkWalkDiagonalBack,
			ROTATE_X: spriteDoinkRotateXBack,
			ROTATE_Y: spriteDoinkRotateYBack,
			getUp: spriteDoinkGetUpFront,
			hits: {
				ATTACK_MID_PUNCH: spriteDoinkFacePunchedBack,
				ATTACK_POWER_PUNCH: spriteDoinkFacePunchedBack,
				ATTACK_MID_KICK: spriteDoinkBallsKicked,
				ATTACK_POWER_KICK: spriteDoinkFacePunchedBack,
				ATTACK_UPPERCUT: spriteDoinkDropped,
				ATTACK_DOWN_FWD: spriteDoinkFacePunchedBack
			}
		},
		run: spriteDoinkRun,
		dropped: spriteDoinkDropped,
		defence: spriteDoinkDefence
	};
	
	attacks = get_doink_attacks();
	
	sounds = {
		painSounds: {
			ATTACK_MID_PUNCH: [ sndDoinkPain08, sndDoinkPain11 ],
			ATTACK_MID_KICK: [
				sndDoinkPain01,
				sndDoinkPain03,
				sndDoinkPain06,
				sndDoinkPain09,
				sndDoinkPain10
			],
			ATTACK_POWER_KICK: [ sndDoinkPain08, sndDoinkPain11 ]
		}
	};
}