/// @description create the vertex data

speed = 5
direction = 0
shootCoolDown = 0

vertex_format_begin();
	vertex_format_add_position();
	vertex_format_add_color();
	vertex_format_add_texcoord();
format = vertex_format_end();


vbuff = vertex_create_buffer();
vertex_begin(vbuff, format);
	vertex_blade(vbuff);
vertex_end(vbuff);

myHubX = shader_get_uniform(shTest, "myHubX");
myHubY = shader_get_uniform(shTest, "myHubY");
myAngle = shader_get_uniform(shTest, "myAngle");
