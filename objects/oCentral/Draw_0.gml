/// @description draw grass

shader_set(shShip);

shader_set_uniform_f(myHubX, 100.0)
shader_set_uniform_f(myHubY, 100.0)
shader_set_uniform_f(myAngle, point_direction(500, 500, mouse_x, mouse_y))
vertex_submit(vbuff, pr_trianglelist, -1);
shader_reset();
