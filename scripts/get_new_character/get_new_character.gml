// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_new_character(_character){
	if (_character == RANDOM) var character = global.characters[irandom(array_length(global.characters)-1)];
	else var character = _character;
	
	switch (character) {
		case DOINK: return new Doink(); break;
		case RAZOR: return new Razor(); break;
		case TAKER: return new Taker(); break;
		case YOKO: return new Yoko(); break;
		case SHAWN: return new Shawn(); break;
		case BIGELOW: return new Bigelow(); break;
		case HITMAN: return new Hitman(); break;
		case LEX: return new Lex(); break;
	}
}