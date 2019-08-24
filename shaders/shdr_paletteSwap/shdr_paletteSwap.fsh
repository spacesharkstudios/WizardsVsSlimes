// go through all the pixels in the image and change the color according to it's blue value

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D Palette;

uniform float Offset;

void main()
{
	float alpha;
	
	vec4 ref = texture2D(gm_BaseTexture, v_vTexcoord);
	
	vec2 uv_coord = vec2(ref.g, Offset);
	
	vec4 new_color = texture2D(Palette, uv_coord);
	
	// check the alpha value of the pixel
	if(ref.a==0.0){
		// don't show the pixel if the alpha is 0
		alpha = 0.0;
	}
	else{
		alpha = 1.0;
	}
	
    gl_FragColor = vec4(new_color.rgb, alpha);
}
