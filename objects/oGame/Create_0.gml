
// INI
myScore = 0
highScore = 0

ini_open("data.ini")
if (ini_read_real("data", "created", 0) == 1) {
	highScore = ini_read_real("data", "score", 0)
} else {
	ini_write_real("data", "created", 1)
	ini_write_real("data", "score", 0)
}
ini_close()








// Player stats
playerX = room_width / 2
playerY = 580
playerSize = 30
playerCol = make_color_rgb(4, 163, 255)

pressed=0
released=0
held=0

canJump=1
jumping=0
jumpHeight=2
onGround=1

myScale = 1


// Environment stats

gameSpeed=5
gameOver=0
bgCol = make_color_rgb(63, 51, 51)


// Obstacles
obstacleCol = make_color_rgb(181, 0, 0)

obstacles = []
alarm[0]=1



function obstacle(_y, _height) constructor {
	Y = _y
	HEIGHT = _height
}


