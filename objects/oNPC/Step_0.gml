/// @description Insert description here
// You can write your code in this editor
speed += irandom_range(-1,1)
direction += irandom_range(-1,7)
image_angle = point_direction(x, y, mouse_x, mouse_y)

	if (mouse_check_button(mb_left) and shootCoolDown < 1)
	if (shootCoolDown < 1)
	{
		with (instance_create_layer(x,y,layer,oBullet))
		{
			direction = other.image_angle
			image_angle = direction
			shooting_range = 1000
			factor = 8
		}
		shootCoolDown = 5
	}
	shootCoolDown -= 1