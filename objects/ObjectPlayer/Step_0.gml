/// @description Insert description here
// You can write your code in this editor
target = get_target(ObjectEnemy);
get_depth();
init_keys();
get_keys();
check_position();

if (!is_undefined(moveScript)) moveScript();
check_attack();
if (!is_undefined(attackScript)) attackScript();
if (!is_undefined(spriteScript)) spriteScript();
