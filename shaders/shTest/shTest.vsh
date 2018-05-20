//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

uniform float myHubX;
uniform float myHubY;
uniform float myAngle;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying float myRad;

void main()
{
	myRad = radians(-myAngle);
	
    vec4 myZeroPos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
	
	vec4 myTurnedPos;
	//myTurnedPos.x = myZeroPos.x;
	//myTurnedPos.y = myZeroPos.y;
	myTurnedPos.x = myZeroPos.x * cos(myRad) - myZeroPos.y * sin(myRad);
	myTurnedPos.y = myZeroPos.x * sin(myRad) + myZeroPos.y * cos(myRad);
	myTurnedPos.z = myZeroPos.z;
	myTurnedPos.w = myZeroPos.w;	
	
	vec4 myRealPos;
	myRealPos.x = myTurnedPos.x + myHubX;
	myRealPos.y = myTurnedPos.y + myHubY;
	myRealPos.z = myTurnedPos.z;
	myRealPos.w = myTurnedPos.w;

	//myRealPos.x = myZeroPos.x + myHubX;
	//myRealPos.y = myZeroPos.y + myHubY;
	//myRealPos.z = myZeroPos.z;
	//myRealPos.w = myZeroPos.w;
	
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * myRealPos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}
