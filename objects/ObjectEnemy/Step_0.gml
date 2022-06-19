/// @description Insert description here
// You can write your code in this editor
target = get_target(ObjectPlayer);
get_depth();
init_keys();
//get_keys();

check_health();
check_dropped();
check_position();
if (!is_undefined(moveScript)) moveScript();
check_attack();
if (!is_undefined(attackScript)) attackScript();
if (!is_undefined(spriteScript)) spriteScript();
if (!is_undefined(endOfLifeScript)) endOfLifeScript();