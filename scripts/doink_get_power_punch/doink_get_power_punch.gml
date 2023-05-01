// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function doink_get_power_punch(){
	return new Attack(
		ATTACK_POWER_PUNCH,
		{ POSITION_FRONT: spriteDoinkSlapFront, POSITION_BACK: spriteDoinkSlapBack },
		80,
		50,
		[4],
		method(ObjectCharacter, function() {
			var baseDistance = 200;
			var targetDistance = point_distance(x,y,target.x,target.y);
			if (targetDistance > baseDistance) targetDistance = baseDistance;
			if (targetDistance < 100) var multiplier = facing*1.3;
			else var multiplier = -facing;
			var angle = 90 + 45 * targetDistance/baseDistance * multiplier;
			rebound = false;
			apply_force(angle,irandom_range(200,400));
		}),
		undefined,
		method(ObjectCharacter, function() { return arccos(-facing)*180/pi; }),
		{
			swing: [ sndSwing04, sndSwing05, sndSwing06 ,sndSwing07 ],
			hit: [ sndPunch04, sndPunch08, sndPunch12 ],
			attack: [
				sndDoinkAttack05,
				sndDoinkAttack08,
				sndDoinkAttack09,
				sndDoinkAttack10,
				sndDoinkAttack12
			]
		}
	);
}