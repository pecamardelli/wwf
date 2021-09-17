/// @description Insert description here

var xDistance = other.x - x;
var yDistance = other.y - y;
var xRange = false;
var yRange = false;

if (abs(xDistance) <= CHARACTER_X_DISTANCE) xRange = true;
if (abs(yDistance) <= CHARACTER_Y_DISTANCE) yRange = true;

if (xRange && yRange) {
	running = false;
	x = approach(x, other.x - (CHARACTER_X_DISTANCE * sign(xDistance)), 1.2);
	y = approach(y, other.y - (CHARACTER_X_DISTANCE * sign(yDistance)), 1);
	other.x = approach(other.x, x + (CHARACTER_X_DISTANCE * sign(xDistance)), 1.5);
	other.y = approach(other.y, y + (CHARACTER_X_DISTANCE * sign(yDistance)), 1);
}