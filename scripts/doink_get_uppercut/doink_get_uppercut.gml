// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function doink_get_uppercut(){
	return new Attack(
		ATTACK_UPPERCUT,
		{ POSITION_FRONT: spriteDoinkUppercut, POSITION_BACK: spriteDoinkUppercut},
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
}