//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{	
	vec4 ref = texture2D(gm_BaseTexture, v_vTexcoord);
	
	
	vec4 new_color = vec4(255.0, 255.0, 255.0, ref.a);
	
    gl_FragColor = new_color;
}
