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

var vbuff = argument0;
var xx = 500
var yy = 500
var width = 100
var height = 100

	var base_alpha = 1
	var base_color = make_color_hsv(255, 245, 255);
	
	var x1 = xx
	var y1 = yy
	var x2 = xx + 100
	var y2 = yy;
	var x3 = xx + 50
	var y3 = yy + 100
	
	var hubX = xx + 50
	var hubY = yy +50
/*	
	var x1 = 100
	var y1 = 100
	var x2 = 200
	var y2 = 100
	var x3 = 150
	var y3 = 200
	
	var hubX = 100
	var hubY = 150
*/
//vertex_float1(vbuff, hubX);
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

//}




