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

global.tex = sprite_get_texture(sVertexTest, 0)
var uvs = texture_get_uvs(global.tex)
var uv_left = uvs[0]
var uv_top = uvs[1]
var uv_right = uvs[2]
var uv_bottom = uvs[3]

var i
for(i = 0; i < 1; i ++)
{
	var base_alpha = 0.75
	//var base_color = make_color_hsv(irandom_range(10,240), irandom_range(10,240), irandom_range(10,240));
	var base_color = make_color_hsv(240, 240, 240);
	
	var hubX = 0
	var hubY = 0
	var size = 50
	
//mono
/*
	var x1 = size
	var y1 = -size
	var x2 = -size
	var y2 = -size
	var x3 = 0
	var y3 = size
	
	vertex_position(vbuff, x1, y1);
	vertex_color(vbuff, base_color, base_alpha);
	vertex_texcoord(vbuff, uv_left, uv_top);

	vertex_position(vbuff, x2, y2);
	vertex_color(vbuff, base_color, base_alpha);
	vertex_texcoord(vbuff, uv_right, uv_top);

	vertex_position(vbuff, x3, y3);
	vertex_color(vbuff, base_color, base_alpha);
	vertex_texcoord(vbuff, uv_left, uv_bottom);
*/	
//triple
	var x1 = -size
	var y1 = -size
	var x2 = 0
	var y2 = -size/2
	var x3 = -size
	var y3 = 0
	
	vertex_position(vbuff, x1, y1);
	vertex_color(vbuff, base_color, base_alpha);
	vertex_texcoord(vbuff, uv_left, uv_top);

	vertex_position(vbuff, x2, y2);
	vertex_color(vbuff, base_color, base_alpha);
	vertex_texcoord(vbuff, uv_right, uv_top);

	vertex_position(vbuff, x3, y3);
	vertex_color(vbuff, base_color, base_alpha);
	vertex_texcoord(vbuff, uv_left, uv_bottom);
	
	var x1 = -size
	var y1 = 0
	var x2 = 0
	var y2 = size/2
	var x3 = -size
	var y3 = size
	
	vertex_position(vbuff, x1, y1);
	vertex_color(vbuff, base_color, base_alpha);
	vertex_texcoord(vbuff, uv_left, uv_top);

	vertex_position(vbuff, x2, y2);
	vertex_color(vbuff, base_color, base_alpha);
	vertex_texcoord(vbuff, uv_right, uv_top);

	vertex_position(vbuff, x3, y3);
	vertex_color(vbuff, base_color, base_alpha);
	vertex_texcoord(vbuff, uv_left, uv_bottom);
	
	var x1 = 0
	var y1 = -size/2
	var x2 = size
	var y2 = 0
	var x3 = 0
	var y3 = size/2
	
	vertex_position(vbuff, x1, y1);
	vertex_color(vbuff, base_color, base_alpha);
	vertex_texcoord(vbuff, uv_left, uv_top);

	vertex_position(vbuff, x2, y2);
	vertex_color(vbuff, base_color, base_alpha);
	vertex_texcoord(vbuff, uv_right, uv_top);

	vertex_position(vbuff, x3, y3);
	vertex_color(vbuff, base_color, base_alpha);
	vertex_texcoord(vbuff, uv_left, uv_bottom);

}


