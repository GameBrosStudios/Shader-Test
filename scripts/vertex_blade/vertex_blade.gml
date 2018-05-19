///@desc add vertex data to grass vbuff
///@param vbuff
///@param x
///@param y
///@param width
///@param height
///@param segments
/*
var vbuff = argument0;
var xx = argument1;
var yy = argument2;
var width = argument3;
var height = argument4;
var segments = argument5;
*/
randomize()
var vbuff = argument0;

var i
for(i = 0; i < 50000; i ++)
{
	var base_alpha = 0.75
	var base_color = make_color_hsv(irandom_range(10,240), irandom_range(10,240), irandom_range(10,240));
	
	var hubX = irandom_range(50, 1500)
	var hubY = irandom_range(50, 1500)
	var size = 10
	
	var x1 = hubX + size
	var y1 = hubY - size
	var x2 = hubX - size
	var y2 = hubY - size
	var x3 = hubX
	var y3 = hubY + size
	
	//t1
	vertex_position(vbuff, x1, y1);
	vertex_color(vbuff, base_color, base_alpha);
	vertex_float1(vbuff, hubX);
	vertex_float1(vbuff, hubY);
	vertex_float1(vbuff, point_direction(hubX, hubY, mouse_x, mouse_y));

	vertex_position(vbuff, x2, y2);
	vertex_color(vbuff, base_color, base_alpha);
	vertex_float1(vbuff, hubX);
	vertex_float1(vbuff, hubY);
	vertex_float1(vbuff, point_direction(hubX, hubY, mouse_x, mouse_y));

	vertex_position(vbuff, x3, y3);
	vertex_color(vbuff, base_color, base_alpha);
	vertex_float1(vbuff, hubX);
	vertex_float1(vbuff, hubY);
	vertex_float1(vbuff, point_direction(hubX, hubY, mouse_x, mouse_y));

}


