/// @description Insert description here
// You can write your code in this editor
target = get_target(ObjectEnemy);
get_depth();
init_keys();
get_keys();
check_position();
check_movement();
check_attack();
if (!attacking) {
	if (!is_undefined(spriteScript)) spriteScript();
}