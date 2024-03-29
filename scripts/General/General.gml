// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#macro msg	show_debug_message

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
#macro ROTATE_X			"rotx"
#macro ROTATE_Y			"roty"

// Entity statuses
#macro IDLE						0x00
#macro WALKING					0x01
#macro RUNNING					0x02
#macro ATTACKING				0x03
#macro BLOCKING					0x04
#macro DROPPED					0x05
#macro GETTING_UP				0x06
#macro READY_FOR_TERMINATION	0xFE
#macro ABOUT_TO_TERMINATE		0xFF

#macro DOINK	"doink"
#macro RAZOR	"razor"
#macro TAKER	"taker"
#macro YOKO		"yoko"
#macro SHAWN	"shawn"
#macro BIGELOW	"bigelow"
#macro HITMAN	"hitman"
#macro LEX		"lex"

#macro CHARACTER_X_DISTANCE 35
#macro CHARACTER_Y_DISTANCE	40

#macro MULTIKEY_TIME		200