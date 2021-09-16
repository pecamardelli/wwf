/// @description Insert description here

var xDistance = abs(other.x - x);
var yDistance = abs(other.y - y);
var xRange = false;
var yRange = false;

if (xDistance <= CHARACTER_X_DISTANCE) xRange = true;
if (yDistance <= CHARACTER_Y_DISTANCE) yRange = true;

if (xRange && yRange) {
	running = false;
	x = approach(x, other.x - (CHARACTER_X_DISTANCE * sign(other.x - x)), 1);
	y = approach(y, other.y - (CHARACTER_X_DISTANCE * sign(other.y - y)), 1);
	other.x = approach(other.x, x + (CHARACTER_X_DISTANCE * sign(other.x - x)), 1);
	other.y = approach(other.y, y + (CHARACTER_X_DISTANCE * sign(other.y - y)), 1);
}