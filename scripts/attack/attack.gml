// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Attack(
	_type,
	_sprite,
	_force,
	_damage,
	_hitFrames,
	_attackScript,
	_hitScript,
	_forceAngleScript,
	_sounds
) constructor {
	type = _type;
	sprites = _sprite;
	force = _force;
	damage = _damage;
	hitFrames = _hitFrames;
	attackScript = _attackScript;
	hitScript = _hitScript;
	forceAngleScript = _forceAngleScript;
	sounds = _sounds;
}