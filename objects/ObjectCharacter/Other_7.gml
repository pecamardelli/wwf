/// @description Insert description here

if (attacking) {
	switch (position) {
		case POSITION_BACK: sprite_index = data.character.sprites.back.idle; break;
		case POSITION_FRONT: sprite_index = data.character.sprites.front.idle; break;
	}
	attacking = false;
	canMove = true;
}