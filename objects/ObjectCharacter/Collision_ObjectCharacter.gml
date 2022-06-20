/// @description Insert description here

var xDistance = other.x - x;
var yDistance = other.y - y;
var xRange = false;
var yRange = false;

if (abs(xDistance) <= CHARACTER_X_DISTANCE) xRange = true;
if (abs(yDistance) <= CHARACTER_Y_DISTANCE) yRange = true;

if (xRange && yRange) {
	x = approach(x, other.x - (CHARACTER_X_DISTANCE * sign(xDistance)), 1.2);
	y = approach(y, other.y - (CHARACTER_X_DISTANCE * sign(yDistance)), 1);
	other.x = approach(other.x, x + (CHARACTER_X_DISTANCE * sign(xDistance)), 1.5);
	other.y = approach(other.y, y + (CHARACTER_X_DISTANCE * sign(yDistance)), 1);
}

if (yRange && other.canBeHit) {	
	if (!is_undefined(attack)) {
		if (array_includes(attack.hitFrames, image_index)) {
			switch (other.status) {
				case BLOCKING: with (other) block_script(); break;
				default:
					var hitScript = attack.hitScript;
					with (other) {
						if (!is_undefined(hitScript)) hitScript();
					}
					break;
			}
		}
	}
}