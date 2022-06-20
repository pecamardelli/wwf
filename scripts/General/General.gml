// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#macro GAME_SCALE		2
#macro PIXELS_PER_METER	115/1.83

// Doink's sprite height is 115px and he's 6 ft tall, so
// the formula for gravity would be something like this:
#macro GRAVITY	PIXELS_PER_METER*9.8/900

#macro RANDOM	"random"

#macro POSITION_FRONT	"front"
#macro POSITION_BACK	"back"
#macro FACING_LEFT		-1
#macro FACING_RIGHT		1

#macro IDLE				0x00
#macro MOVING			0x01
#macro RUNNING			0x02
#macro ATTACKING		0x03

#macro ROTATE_X		0x00
#macro ROTATE_Y		0x01

#macro DOINK	"doink"
#macro RAZOR	"razor"
#macro TAKER	"taker"
#macro YOKO		"yoko"
#macro SHAWN	"shawn"
#macro BIGELOW	"bigelow"
#macro HITMAN	"hitman"
#macro LEX		"lex"

#macro CHARACTER_X_DISTANCE 30
#macro CHARACTER_Y_DISTANCE	20