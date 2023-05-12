/// @description Insert description here

var xDistance = other.x - x;
var yDistance = other.y - y;
var xRange = false;
var yRange = false;

if (abs(xDistance) <= CHARACTER_X_DISTANCE) xRange = true;
if (abs(yDistance) <= CHARACTER_Y_DISTANCE) yRange = true;

if (xRange && yRange) {
	x = approach(x, other.x - (CHARACTER_X_DISTANCE * sign(xDistance)), 1.2);
	y = approach(y, other.y - (CHARACTER_Y_DISTANCE * sign(yDistance)), 1);
	other.x = approach(other.x, x + (CHARACTER_X_DISTANCE * sign(xDistance)), 1.5);
	other.y = approach(other.y, y + (CHARACTER_Y_DISTANCE * sign(yDistance)), 1);
}

if (yRange && other.canBeHit && target == other.id) {
	if (!is_undefined(attack)) {
		if (array_includes(attack.hitFrames, image_index)) {
			// If the character passes away the enemy, do not hit him.
			if(
				(facing == FACING_LEFT && x < other.x) ||
				(facing == FACING_RIGHT && x > other.x)
			) return;
			
			switch (status) {
				case BLOCKING: with (other) block_attack(); break;
				default: with (other) attack_hit(other.attack); break;
			}
		}
	}
}