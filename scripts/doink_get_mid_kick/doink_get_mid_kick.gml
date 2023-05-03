// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function doink_get_mid_kick(){
	return new Attack(
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
			if(is_undefined(target)) return;
			
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
}