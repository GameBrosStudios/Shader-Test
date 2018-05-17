//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_HubPos;                    // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
//attribute vec2 in_TextureCoord;              // (u,v)
attribute float in_HubX;
attribute float in_HubY;
attribute float in_Angle;

//uniform float myHubX;
//uniform float myHubY;
uniform float myAngle;

varying float myRad;

//varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	myRad = radians(myAngle);
	//get  inpit position
	vec4 trans_pos = vec4(in_Position.xyz, 1.0);
	//vec4 centered_pos = vec4(trans_pos.x - in_HubX, trans_pos.y - in_HubY, trans_pos.z, 1.0);
	
	//center on zero to prepare for turn
	vec4 centered_pos;
	centered_pos.x = trans_pos.x - in_HubX;
	centered_pos.y = trans_pos.y - in_HubY;
	centered_pos.z = trans_pos.z;
	centered_pos.w = 1.0;
	
	//do 2d turn
	vec4 turned_pos;
	turned_pos.x = centered_pos.x * cos(myRad) - centered_pos.y * cos(myRad);
	turned_pos.y = centered_pos.x * sin(myRad) + centered_pos.y * cos(myRad);
	turned_pos.z = centered_pos.z;
	turned_pos.w = 1.0;
	
	//return to original Position
	vec4 return_pos;
	return_pos.x = turned_pos.x + trans_pos.x;
	return_pos.y = turned_pos.y + trans_pos.y;
	return_pos.z = turned_pos.z + trans_pos.z;
	return_pos.w = 1.0;	
	/*
	//prepare for drawing
	vec4 drawing_pos;
	drawing_pos.x = return_pos.x;
	drawing_pos.y = return_pos.y;
	drawing_pos.z = return_pos.z;
	drawing_pos.w = 1.0;	
	*/
	vec4 drawing_pos = vec4(return_pos);

    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * drawing_pos;
    
    v_vColour = in_Colour;
    //v_vTexcoord = in_TextureCoord;
}
