/// @description 

/*

Game where player moves up and you have to tap to jump

*/

// Player stats
playerX = room_width / 2
playerY = 580
playerSize = 40
playerCol = make_color_rgb(4, 163, 255)

pressed=0
released=0
held=0

canJump=1
jumpHeight=10
onGround=1

myScale = 1

// Environment stats
gameSpeed=5
bgCol = make_color_rgb(63, 51, 51)


// Obstacles
obstacleCol = make_color_rgb(181, 0, 0)

obstacle = {
	x: 0,
	y: 0,
	height: 0
}