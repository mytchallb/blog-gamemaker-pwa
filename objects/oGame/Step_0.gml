/// @description 


pressed = device_mouse_check_button_pressed(0, mb_left)
held = device_mouse_check_button(0, mb_left)
released = device_mouse_check_button_released(0, mb_left)

// Check if x,y is on obstacle


// Jump if on ground
if (canJump) {
	if (pressed) {
		canJump=0	
	}
}

// Jump up higher
if (!canJump && held) {
	
}

// Fall
if (!canJump && held) {
	
}
