// Script assets have changed for v2.3.0 see
// https =//help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Taker() constructor {
	name = "The Undertaker";
	walkSpeed = 3;
	runSpeed = 8;
	sprites = {
		front: {
			idle: spriteDoinkIdleFront,
			walkHorizontal: spriteDoinkWalkHorizontalFront,
			walkVertical: spriteDoinkWalkVerticalFront,
			walkDiagonal: spriteDoinkWalkDiagonalFront,
			midPunch: spriteDoinkMidPunchFront
		},
		back: {
			idle: spriteDoinkIdleBack,
			walkHorizontal: spriteDoinkWalkHorizontalBack,
			walkVertical: spriteDoinkWalkVerticalBack,
			walkDiagonal: spriteDoinkWalkDiagonalBack,
			midPunch: spriteDoinkMidPunchBack
		},
		rotateXFront: spriteDoinkRotateXFront,
		rotateXBack: spriteDoinkRotateXBack,
		rotateY: spriteDoinkRotateY,
		run: spriteDoinkRun,
		uppercut: spriteDoinkUppercut
	}
}