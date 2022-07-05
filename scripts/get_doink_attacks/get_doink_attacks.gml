// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_doink_attacks(){
	var attacks = {};
	
	#region MID PUNCH
	
	var midPunch = new Attack(
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
	
	variable_struct_set(attacks, ATTACK_MID_PUNCH, midPunch);
	
	#endregion
	
	#region	UPPERCUT
	
	var uppercut = new Attack(
		ATTACK_UPPERCUT,
		{
			front: spriteDoinkUppercut,
			back: spriteDoinkUppercut
		},
		1200,
		180,
		[4],
		method(ObjectCharacter, function() {
			with (other) {
				alarmScript = function () { image_speed = 1; }
				image_speed = 0;
				image_index = attack.hitFrames[0];
				apply_force(arccos(-facing)*180/pi, random_range(8,15));
				alarm_set(0, 0.2 * room_speed);
			}
		}),
		undefined,
		method(ObjectCharacter, function() { return 90 + random_range(3,12) * -facing; }),
		{
			swing: global.sounds.swing,
			hit: [ sndPunch04 ],
			attack: [ sndDoinkAttack08, sndDoinkAttack10, sndDoinkAttack11 ]
		}
	);
	
	variable_struct_set(attacks, ATTACK_UPPERCUT, uppercut);
	
	#endregion
	
	#region MID KICK
	
	var midKick = new Attack(
		ATTACK_MID_KICK,
		{
			front: spriteDoinkMidKickFront,
			back: spriteDoinkMidKickBack
		},
		600,
		85,
		[3],
		method(ObjectCharacter, function() {
			spriteScript = function () {
				if (!onFloor && image_index >= 3) image_speed = 0;
				else image_speed = 1;
			}
			rebound = false;
		}),
		undefined,
		method(ObjectCharacter, function() { return 45; }),
		{
			swing: global.sounds.swing,
			hit: [ sndPunch08 ],
			attack: [ sndDoinkAttack10 ]
		}
	);
	
	variable_struct_set(attacks, ATTACK_MID_KICK, midKick);
	
	#endregion
	
	#region POWER KICK
	
	var powerKick = new Attack(
		ATTACK_POWER_KICK,
		{
			front: spriteDoinkPowerKickFront,
			back: spriteDoinkPowerKickBack
		},
		200,
		100,
		[4,5],
		method(ObjectCharacter, function() { apply_force(45,200); }),
		undefined,
		method(ObjectCharacter, function() { return 90 + random_range(70,80) * -facing; }),
		{
			swing: global.sounds.swing,
			hit: [ sndPunch03 ],
			attack: [ sndDoinkAttack10 ]
		}
	);
	
	variable_struct_set(attacks, ATTACK_POWER_KICK, powerKick);
	
	#endregion
	
	return attacks;
}