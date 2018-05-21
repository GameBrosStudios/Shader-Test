/// @description draw grass

shader_set(shTest);

shader_set_uniform_f(myHubX, x)
shader_set_uniform_f(myHubY, y)
shader_set_uniform_f(myAngle, image_angle)
vertex_submit(vbuff, pr_trianglelist, global.tex);
shader_reset();
