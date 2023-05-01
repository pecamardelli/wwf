// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_keys() {
	if(is_undefined(data)) return;
	
	var keys = variable_struct_get(data, "keys");
	
	if(is_undefined(keys)) return;
	
	if(!is_undefined(keys.keyboard.left)){
		left = keyboard_check_pressed(keys.keyboard.left);
		if(left) {
			switch(facing) {
				case FACING_LEFT: forward = true; break;
				case FACING_RIGHT: backward = true; break;
				default: break;
			}
		}
	}
	
	if(!is_undefined(keys.keyboard.right)) {
		right = keyboard_check_pressed(keys.keyboard.right);
		if(right) {
			switch(facing) {
				case FACING_LEFT: backward = true; break;
				case FACING_RIGHT: forward = true; break;
				default: break;
			}
		}
	}
	
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
	
	if (forward) {
		if (current_time - keyLastPressedTime.forward < MULTIKEY_TIME) doubleForward = true;
		if (current_time - keyLastPressedTime.down < MULTIKEY_TIME) downForward = true;
		keyLastPressedTime.forward = current_time;
	}
	
	if (backward) {
		if (current_time - keyLastPressedTime.backward < MULTIKEY_TIME) doubleBackward = true;
		if (current_time - keyLastPressedTime.down < MULTIKEY_TIME) downBackward = true;
		keyLastPressedTime.backward = current_time;
	}
	
	if (down) {
		if (current_time - keyLastPressedTime.down < MULTIKEY_TIME) doubleDown = true;
		keyLastPressedTime.down = current_time;
	}
	
	if (up) {
		if (current_time - keyLastPressedTime.up < MULTIKEY_TIME) doubleUp = true;
		keyLastPressedTime.up = current_time;
	}
	
	if (downForward) show_debug_message("downForward");
	if (downBackward) show_debug_message("downBackward");
	if (doubleForward) show_debug_message("doubleForward");
	if (doubleBackward) show_debug_message("doubleBackward");
	if (doubleDown) show_debug_message("doubleDown");
	if (doubleUp) show_debug_message("doubleUp");
}