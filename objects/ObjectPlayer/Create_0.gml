/// @description Insert description here

floorY = y;
image_xscale = GAME_SCALE;
image_yscale = GAME_SCALE;

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
	character: get_new_character(DOINK),
};

maxHSpeed = data.character.walkSpeed;
maxVSpeed = data.character.walkSpeed/2.5;

spriteScript = update_sprites;