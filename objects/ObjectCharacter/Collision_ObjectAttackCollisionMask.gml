/// @description Insert description here
// You can write your code in this editor
if (id == other.creatorId) return;
if (id != other.creatorId.target) return;
//if (is_undefined(other.creatorId.target)) return;

var yDistance = y - other.creatorId.y;
var yRange = false;

if (abs(yDistance) <= CHARACTER_Y_DISTANCE) yRange = true;

if (yRange && canBeHit) {
	if (!is_undefined(other.creatorId.attack)) {
show_debug_message("hi")
		if (array_includes(other.creatorId.attack.hitFrames, image_index)) {
			switch (status) {
				case BLOCKING: block_script(); break;
				default:
					var hitScript = other.creatorId.attack.hitScript;
					if (!is_undefined(hitScript)) hitScript();
					break;
			}
		}
	}
}