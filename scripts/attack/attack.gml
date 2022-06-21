// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Attack(_type, _sprite, _force, _damage, _hitFrames, _collisionMask, _preScript, _postScript, _hitScript, _sounds) constructor {
	type = _type;
	sprites = _sprite;
	force = _force;
	damage = _damage;
	hitFrames = _hitFrames;
	collisionMask = _collisionMask;
	preScript = _preScript;
	postScript = _postScript;
	hitScript = _hitScript;
	sounds = _sounds;
}