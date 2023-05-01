// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function doink_get_power_kick(){
	return new Attack(
		ATTACK_POWER_KICK,
		{
			POSITION_FRONT: spriteDoinkPowerKickFront,
			POSITION_BACK: spriteDoinkPowerKickBack
		},
		100,
		100,
		[4,5],
		method(ObjectCharacter, function() { apply_force(90+70*-facing,irandom_range(50,100)); }),
		method(ObjectCharacter, function() {
			var otherForce = other.data.character.weight * (1+abs(other.hspeed));
			var myForce = data.character.weight * (1+abs(hspeed));
			var resultantForce = abs(myForce - otherForce);
			var forceDirection = sign(myForce - otherForce);
			apply_force(90+80*forceDirection,resultantForce);
		}),
		method(ObjectCharacter, function() { return 90 + random_range(70,80) * -facing; }),
		{
			swing: global.sounds.swing,
			hit: [ sndPunch03 ],
			attack: [ sndDoinkAttack10 ]
		}
	);
}