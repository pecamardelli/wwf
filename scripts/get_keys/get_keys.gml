// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_keys() {
	if(is_undefined(data)) return;
	
	var keys = variable_struct_get(data, "keys");
	
	if(is_undefined(keys)) return;
	
	if(!is_undefined(keys.keyboard.left))  left		= keyboard_check(keys.keyboard.left);
	if(!is_undefined(keys.keyboard.right)) right	= keyboard_check(keys.keyboard.right);
	if(!is_undefined(keys.keyboard.up))	   up		= keyboard_check(keys.keyboard.up);
	if(!is_undefined(keys.keyboard.down))  down		= keyboard_check(keys.keyboard.down);

	if(!is_undefined(keys.keyboard.buttonA)) buttonA	= keyboard_check_pressed(keys.keyboard.buttonA);
	if(!is_undefined(keys.keyboard.buttonB)) buttonB	= keyboard_check(keys.keyboard.buttonB);
	if(!is_undefined(keys.keyboard.buttonC)) buttonC	= keyboard_check_pressed(keys.keyboard.buttonC);
	if(!is_undefined(keys.keyboard.buttonX)) buttonX	= keyboard_check_pressed(keys.keyboard.buttonX);
	if(!is_undefined(keys.keyboard.buttonY)) buttonY	= keyboard_check_pressed(keys.keyboard.buttonY);
	if(!is_undefined(keys.keyboard.buttonZ)) buttonZ	= keyboard_check_pressed(keys.keyboard.buttonZ);
	
	if(!is_undefined(keys.keyboard.start))  start	= keyboard_check_pressed(keys.keyboard.start);
	if(!is_undefined(keys.keyboard.select)) select	= keyboard_check_pressed(keys.keyboard.select);
	
	if (left) {
		if (current_time - keyLastPressedTime.left < MULTIKEY_TIME) doubleLeft = true;
		if (current_time - keyLastPressedTime.down < MULTIKEY_TIME) downLeft = true;
		keyLastPressedTime.left = current_time;
	}
	
	if (right) {
		if (current_time - keyLastPressedTime.right < MULTIKEY_TIME) doubleRight = true;
		if (current_time - keyLastPressedTime.down < MULTIKEY_TIME) downRight = true;
		keyLastPressedTime.right = current_time;
	}
	
	if (down) {
		if (current_time - keyLastPressedTime.down < MULTIKEY_TIME) doubleDown = true;
		keyLastPressedTime.down = current_time;
	}
	
	if (up) {
		if (current_time - keyLastPressedTime.up < MULTIKEY_TIME) doubleUp = true;
		keyLastPressedTime.up = current_time;
	}
	
	if (downRight) show_debug_message("downRight");
	if (downLeft) show_debug_message("downLeft");
	if (doubleLeft) show_debug_message("doubleLeft");
	if (doubleRight) show_debug_message("doubleRight");
	if (doubleDown) show_debug_message("doubleDown");
	if (doubleUp) show_debug_message("doubleUp");
}