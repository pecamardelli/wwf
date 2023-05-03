/// @description Insert description here
// You can write your code in this editor
target = get_target(ObjectEnemy);
get_depth();
init_keys();
get_keys();

check_health();
check_status();
check_dropped();
check_position();
check_target();
check_attack();

if(!is_undefined(moveScript)) moveScript();
if(!is_undefined(spriteScript)) spriteScript();
if(!is_undefined(endOfLifeScript)) endOfLifeScript();
