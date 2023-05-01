// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function doink_get_mid_punch(){
	return new Attack(
		ATTACK_MID_PUNCH,
		{ front: spriteDoinkMidPunchFront, back: spriteDoinkMidPunchBack },
		80,
		50,
		[4],
		undefined,
		undefined,
		method(ObjectCharacter, function() { return arccos(-facing)*180/pi; }),
		{
			swing: [ sndSwing04, sndSwing05, sndSwing06 ,sndSwing07 ],
			hit: [ sndPunch09, sndPunch11 ],
			attack: [ sndDoinkAttack08, sndDoinkAttack09, sndDoinkAttack10 ]
		}
	);
}