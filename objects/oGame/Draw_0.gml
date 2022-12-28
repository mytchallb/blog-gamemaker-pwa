/// @description Draw game

// BG
draw_set_color(bgCol)
draw_rectangle(0, 0, room_width, room_height, 0)

// Obstacles
draw_set_color(obstacleCol)


// Player
draw_set_color(playerCol)
draw_circle(playerX, playerY, playerSize, 0)