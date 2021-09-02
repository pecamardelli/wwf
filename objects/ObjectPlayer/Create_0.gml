/// @description Insert description here

sprite_index = spriteDoinkIdleFront;

data = {
	keys: {
		keyboard: {
			up: ord("W"),
			down: ord("S"),
			left: ord("A"),
			right: ord("D"),
			buttonA: ord("J"),
			buttonB: ord("K"),
			buttonC: ord("L"),
			buttonX: ord("U"),
			buttonY: ord("I"),
			buttonZ: ord("O"),
			start: ord("Enter"),
			select: ord("Space")
		}
	},
	character: {
		walkSpeed: 3,
		runSpeed: 8,
		sprites: {
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
			run: spriteDoinkRun,
			uppercut: spriteDoinkUppercut
		}
	}
};

target = { x: room_width, y: room_height/2};
maxHSpeed = data.character.walkSpeed;
maxVSpeed = data.character.walkSpeed/2.5;
running = false;
image_xscale = GAME_SCALE;
image_yscale = GAME_SCALE;