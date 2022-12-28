/// @description Draw game

// BG
draw_set_color(bgCol)
draw_rectangle(0, 0, room_width, room_height, 0)

// Obstacles
draw_set_color(obstacleCol)
for (var i = 0; i < array_length(obstacles); i++) {
	draw_rectangle(0, obstacles[i].Y, room_width, obstacles[i].Y- obstacles[i].HEIGHT, 0)
}


// Player
draw_set_color(playerCol)
draw_circle(playerX, playerY, playerSize*myScale, 0)

// Text
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_text(20, 20, "Score: "+string(myScore))
draw_set_halign(fa_right)
draw_text(room_width-20, 20, "High Score: "+string(highScore))
