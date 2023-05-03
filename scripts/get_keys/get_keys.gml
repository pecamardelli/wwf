// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_keys() {
	if(is_undefined(data)) return;
	
	var keys = variable_struct_get(data, "keys");
	
	if(is_undefined(keys)) return;
	
	if(!is_undefined(keys.keyboard.left)){
		left = keyboard_check(keys.keyboard.left);
		leftPressed = keyboard_check_pressed(keys.keyboard.left);
		
		if(left) {
			switch(facing) {
				case FACING_LEFT: forward = true; break;
				case FACING_RIGHT: backward = true; break;
				default: break;
			}
		}
		
		if(leftPressed) {
			switch(facing) {
				case FACING_LEFT: forwardPressed = true; break;
				case FACING_RIGHT: backwardPressed = true; break;
				default: break;
			}
		}
	}
	
	if(!is_undefined(keys.keyboard.right)) {
		right = keyboard_check(keys.keyboard.right);
		rightPressed = keyboard_check_pressed(keys.keyboard.right);
		
		if(right) {
			switch(facing) {
				case FACING_LEFT: backward = true; break;
				case FACING_RIGHT: forward = true; break;
				default: break;
			}
		}
		
		if(rightPressed) {
			switch(facing) {
				case FACING_LEFT: backwardPressed = true; break;
				case FACING_RIGHT: forwardPressed = true; break;
				default: break;
			}
		}
	}
	
	if(!is_undefined(keys.keyboard.up)) {
		up = keyboard_check(keys.keyboard.up);
		upPressed = keyboard_check_pressed(keys.keyboard.up);
	}
	
	if(!is_undefined(keys.keyboard.down)) {
		down = keyboard_check(keys.keyboard.down);
		downPressed = keyboard_check_pressed(keys.keyboard.down);
	}

	if(!is_undefined(keys.keyboard.midPunch))	midPunch	= keyboard_check_pressed(keys.keyboard.midPunch);
	if(!is_undefined(keys.keyboard.block))		block		= keyboard_check(keys.keyboard.block);
	if(!is_undefined(keys.keyboard.midKick))	midKick		= keyboard_check_pressed(keys.keyboard.midKick);
	if(!is_undefined(keys.keyboard.powerPunch)) powerPunch	= keyboard_check_pressed(keys.keyboard.powerPunch);
	if(!is_undefined(keys.keyboard.trot))		trot		= keyboard_check_pressed(keys.keyboard.trot);
	if(!is_undefined(keys.keyboard.powerKick))	powerKick	= keyboard_check_pressed(keys.keyboard.powerKick);
	
	if(!is_undefined(keys.keyboard.start))  start	= keyboard_check_pressed(keys.keyboard.start);
	if(!is_undefined(keys.keyboard.select)) select	= keyboard_check_pressed(keys.keyboard.select);
	
	if (forwardPressed) {
		if (current_time - keyLastPressedTime.forward < MULTIKEY_TIME) {
			doubleForward = true;
			keyLastPressedTime.doubleForward = current_time;
		}
		
		if (current_time - keyLastPressedTime.down < MULTIKEY_TIME) {
			downForward = true;
			keyLastPressedTime.downForward = current_time;
		}
		
		keyLastPressedTime.forward = current_time;
	}
	
	if (backwardPressed) {
		if (current_time - keyLastPressedTime.backward < MULTIKEY_TIME) {
			doubleBackward = true;
			keyLastPressedTime.doubleBackward = current_time;
		}
		
		if (current_time - keyLastPressedTime.down < MULTIKEY_TIME) {
			downBackward = true;
			keyLastPressedTime.downBackward = current_time;
		}
		
		keyLastPressedTime.backward = current_time;
	}
	
	if (upPressed) {
		if (current_time - keyLastPressedTime.up < MULTIKEY_TIME) {
			doubleUp = true;
			keyLastPressedTime.doubleUp = current_time;
		}
		
		keyLastPressedTime.up = current_time;
	}
	
	if (downPressed) {
		if (current_time - keyLastPressedTime.down < MULTIKEY_TIME) {
			doubleDown = true;
			keyLastPressedTime.doubleDown = current_time;
		}
		
		keyLastPressedTime.down = current_time;
	}
	
	//if (downForward) msg("downForward");
	//if (downBackward) msg("downBackward");
	//if (doubleForward) msg("doubleForward");
	//if (doubleBackward) msg("doubleBackward");
	//if (doubleDown) msg("doubleDown");
	//if (doubleUp) msg("doubleUp");
}