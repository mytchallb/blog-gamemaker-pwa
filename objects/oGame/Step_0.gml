/// @description 


pressed = device_mouse_check_button_pressed(0, mb_left)
held = device_mouse_check_button(0, mb_left)
released = device_mouse_check_button_released(0, mb_left)

// Check if x,y is on obstacle


// Jump if on ground
if (canJump && !jumping) {
	if (pressed) {
		canJump=0
		jumping=1
	}
}

// Jump up higher
if (jumping && held) {
	if (myScale<jumpHeight) {
		myScale+=.05
	} else {
		jumping=0
	}
}

// Fall
if (jumping && released) {
	jumping=0
}

if (!jumping) {
	if (myScale>1) {
		myScale-=.05
	} else {
		canJump=1
	}
}

show_debug_message("C")


// Move obstacles and remove them from array once they leave the room
for (var i = 0; i < array_length(obstacles); i++) {
	obstacles[i].Y += gameSpeed
	
	if (((obstacles[i].Y - obstacles[i].HEIGHT) > room_height) && i!=0) {
		array_delete(obstacles, i, 1)
	}
	
	// Check position against player position
	if (point_in_rectangle(playerX, playerY, 0, obstacles[i].Y  - obstacles[i].HEIGHT, room_width, obstacles[i].Y)) {
		if (myScale==1) {
			canJump=0
			gameOver=1
			playerCol = make_color_rgb(127, 127, 127)
			if (myScore>highScore) {
				ini_open("data.ini")
				ini_write_real("data", "score", myScore)
				ini_close()
			}
		}
	}
}

if (gameOver) {
	if (gameSpeed>0.1) {
		gameSpeed -=0.2
	} else {
		gameSpeed=0
	}
	
	if (gameSpeed==0 && pressed) {
		game_restart()
	}
}


// Game Logic
if !gameOver myScore+=1
if keyboard_check_pressed(vk_escape) game_end()
if keyboard_check_pressed(ord("R")) game_restart()

show_debug_message("D")