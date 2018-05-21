/// @description draw grass

shader_set(shTest);

shader_set_uniform_f(myHubX, x)
shader_set_uniform_f(myHubY, y)
shader_set_uniform_f(myAngle, point_direction(x, y, mouse_x, mouse_y))
vertex_submit(vbuff, pr_trianglelist, global.tex);
shader_reset();
