// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function block_attack(){
	currentHealth -= other.attack.damage / 20;
	
	if (currentHealth <= 0) {
		apply_force(45*other.facing,500);
		onFloor = false;
	}
	else {
		var baseForce = 300;
		if (other.attack.force > baseForce) var force = baseForce;
		else var force = other.attack.force;
		
		var angle = arccos(other.facing)*180/pi;
		apply_force(angle, force);
	}
	
	play_random_sound(global.sounds.block);
	
	image_speed = 1;
}
	