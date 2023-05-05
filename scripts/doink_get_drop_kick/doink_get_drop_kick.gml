// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function doink_get_drop_kick(){
	return new Attack(
		ATTACK_DROP_KICK,
		{
			POSITION_FRONT: spriteDoinkDropKick,
			POSITION_BACK: spriteDoinkDropKick
		},
		300,
		200,
		[5,6],
		method(ObjectCharacter, function() {
			apply_force(90+25*-facing, 400);
			moveScript = function() {
				if (onFloor) hspeed = hspeed/4;
				else if (image_index == 8) image_speed = 0;
				
				if (hspeed == 0) image_speed = 1;
			};
		}),
		method(ObjectCharacter, function() {
			var otherForce = other.data.character.weight * (1+abs(other.hspeed));
			var myForce = data.character.weight * (1+abs(hspeed/1.4));
			var resultantForce = abs(myForce - otherForce);
			
			apply_force(90 + 70 * facing, resultantForce);
			image_speed = 0;
			image_index = 8;
			
			bounce = true;
			moveScript = function() {
				if (onFloor) {
					if (bounce) bounce = false;
					else image_speed = 1;
				}
			};
		}),
		method(ObjectCharacter, function() { return 90 + random_range(30,45) * -facing; }),
		{
			swing: global.sounds.swing,
			hit: [ sndPunch02 ],
			attack: [ sndDoinkAttack10 ]
		}
	);
}