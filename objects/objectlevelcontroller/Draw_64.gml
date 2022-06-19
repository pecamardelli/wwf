/// @description Insert description here
// You can write your code in this editor

if (instance_exists(ObjectPlayer)) draw_health_bar(ObjectPlayer);

if (!is_undefined(ObjectPlayer.target)) draw_health_bar(ObjectPlayer.target);
