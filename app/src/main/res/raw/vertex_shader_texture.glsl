uniform mat4 uMVPMatrix; 
attribute vec4 vPosition;  
attribute vec2 a_TexCoordinate; // Per-vertex texture coordinate information we will pass in.
varying vec2 v_TexCoordinate;   // This will be passed into the fragment shader.

void main () 
{ 
	gl_Position = uMVPMatrix * vPosition;

	// Pass through the texture coordinate.
	v_TexCoordinate = a_TexCoordinate;
}