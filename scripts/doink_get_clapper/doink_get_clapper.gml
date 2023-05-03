// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function doink_get_clapper(){
	return new Attack(
		ATTACK_CLAPPER,
		{ POSITION_FRONT: spriteDoinkClapper, POSITION_BACK: spriteDoinkClapper },
		550,
		60,
		[5],
		method(ObjectCharacter, function() {
			if(is_undefined(target)) return;
			
			var baseDistance = 300;
			var targetDistance = point_distance(x,y,target.x,target.y);
			if (targetDistance > baseDistance) targetDistance = baseDistance;
			if (targetDistance < 100) var multiplier = facing*1.3;
			else var multiplier = -facing;
			var angle = 90 + 45 * targetDistance/baseDistance * multiplier;
			rebound = false;
			apply_force(angle,irandom_range(200,400));
		}),
		undefined,
		method(ObjectCharacter, function() { return arccos(facing)*180/pi; }),
		{
			swing: [ sndSwing04, sndSwing05, sndSwing06 ,sndSwing07 ],
			hit: [
				sndPunch01,
				sndPunch02,
				sndPunch03,
				sndPunch04,
				sndPunch06,
				sndPunch07,
				sndPunch08,
				sndPunch09,
				sndPunch10,
				sndPunch11
			],
			attack: []
		}
	);
}