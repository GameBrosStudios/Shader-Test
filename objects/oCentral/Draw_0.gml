/// @description draw grass

shader_set(shTest);

shader_set_uniform_f(myHubX, 500)
shader_set_uniform_f(myHubY, 500)
shader_set_uniform_f(myAngle, point_direction(500, 500, mouse_x, mouse_y))
vertex_submit(vbuff, pr_trianglelist, global.tex);
shader_reset();
