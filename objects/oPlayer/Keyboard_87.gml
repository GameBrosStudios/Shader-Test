/// @description Insert description here
// You can write your code in this editor
	myDirX = dcos(image_angle) * 10
	myDirY = dsin(image_angle) * 10
	
	direction = point_direction(x,y,x + myDirX,y - myDirY)
	speed = sqrt(sqr(myDirX)+sqr(myDirY))
