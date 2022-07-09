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
	
	#region POWER PUNCH
	
	var powerPunch = new Attack(
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
	
	variable_struct_set(attacks, ATTACK_POWER_PUNCH, powerPunch);
	
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
		undefined,
		method(ObjectCharacter, function() {
			alarmScript = function () { image_speed = 1; }
			image_speed = 0;
			image_index = attack.hitFrames[0];
			apply_force(arccos(-facing)*180/pi, random_range(8,15));
			alarm_set(0, 0.2 * room_speed);
			apply_force(90+90*facing,irandom_range(150,250));
			
			with (target) {
				moveScript = undefined;
				spriteScript = dropped_sprites;
				status = DROPPED;
			}
		}),
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
		400,
		85,
		[3],
		undefined,
		method(ObjectCharacter, function() {
			with (target) {
				spriteScript = function () {
					if (!onFloor && image_index >= 3) image_speed = 0;
					else image_speed = 1;
				}
				rebound = false;
			}
		}),
		method(ObjectCharacter, function() { return 90 + 30 * -facing; }),
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
	
	variable_struct_set(attacks, ATTACK_POWER_KICK, powerKick);
	
	#endregion
	
	return attacks;
}