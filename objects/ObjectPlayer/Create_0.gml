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
			midPunch: ord("J"),
			block: ord("K"),
			midKick: ord("L"),
			powerPunch: ord("U"),
			trot: ord("I"),
			powerKick: ord("O"),
			start: ord("Enter"),
			select: ord("Space")
		}
	},
	character: get_new_character(DOINK),
};

maxHSpeed = data.character.walkSpeed;
maxVSpeed = data.character.walkSpeed/2.5;

moveScript = basic_movement;
spriteScript = update_sprites;
type = "player";
msg(type + " id: " + string(id));