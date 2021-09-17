/// @description Insert description here
// You can write your code in this editor

get_depth();
target = get_target(ObjectPlayer);
init_keys();
//get_keys();
check_movement();
check_position();
check_attack();
if (!attacking) update_sprites();