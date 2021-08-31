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
		speed: 3,
	}
};

maxHSpeed = data.character.speed;
maxVSpeed = data.character.speed/2.5;
image_xscale = 2;
image_yscale = 2;