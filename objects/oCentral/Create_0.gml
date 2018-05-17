/// @description create the vertex data



vertex_format_begin();
	vertex_format_add_position();
	vertex_format_add_color();
	vertex_format_add_custom(vertex_type_float1, vertex_usage_texcoord);
	vertex_format_add_custom(vertex_type_float1, vertex_usage_texcoord);
	vertex_format_add_custom(vertex_type_float1, vertex_usage_texcoord);
format = vertex_format_end();


vbuff = vertex_create_buffer();
vertex_begin(vbuff, format);
	vertex_blade(vbuff);
vertex_end(vbuff);

//myHubX = shader_get_uniform(shShip, "myHubX");
//myHubY = shader_get_uniform(shShip, "myHubY");
myAngle = shader_get_uniform(shShip, "myAngle");
