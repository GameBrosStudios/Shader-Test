/// @description draw grass

shader_set(shShip);

shader_set_uniform_f(myHubX, 100.0)
shader_set_uniform_f(myHubY, 100.0)
vertex_submit(vbuff, pr_trianglelist, -1);
shader_reset();
