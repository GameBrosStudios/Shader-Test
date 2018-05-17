//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_HubPos;                    // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
//attribute vec2 in_TextureCoord;              // (u,v)
//attribute float in_Angle;


//color handler to fragment shader
varying vec4 v_vColour;


void main()
{
	
	//Create Position coordinates
	vec4 trans_pos = vec4(in_Position.xyz , 1.0);
	//vec4 Hub_pos = vec4(in_HubPos.xyz , 1.0);
	//trans_pos.x -= Hub_pos.x;
	//trans_pos.x -= 100.0;
	
	//vec3 hubVec = vec3(in_Position.x,in_Position.y,0);
	//vec3 hubVec = vec3(500,500,500);
	//vec4 trans_pos = vec4(in_Position.xyz , 1);
    //vec4 trans_pos = vec4(hubVec.xyz , 1);
	
	//Print on Screen on XY coordinates
	gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * trans_pos;
    
	//Fill Color
    v_vColour = in_Colour;
	
}
