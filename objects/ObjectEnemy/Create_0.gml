floorY = y;
image_xscale = GAME_SCALE;
image_yscale = GAME_SCALE;

currentHealth = 5;

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

moveScript = basic_movement;
spriteScript = update_sprites;
type = "enemy";
show_debug_message(type + " id: " + string(id));