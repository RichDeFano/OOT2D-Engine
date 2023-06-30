//
//Pass in the texture coordinates from the vertex shader.
varying vec2 v_vTexcoord;
//Pass in the vertex color/alpha from the vertex shader.
varying vec4 v_vColour;



//Handle fragments/pixels.
void main()
{

	vec4 self_color = texture2D(gm_BaseTexture, v_vTexcoord);
	vec4 right_color = texture2D(gm_BaseTexture, v_vTexcoord + vec2(1.0, 0.0));
	vec4 left_color = texture2D(gm_BaseTexture, v_vTexcoord + vec2(-1.0, 0.0));
	vec4 up_color = texture2D(gm_BaseTexture, v_vTexcoord + vec2(0.0, -1.0));
	vec4 down_color = texture2D(gm_BaseTexture, v_vTexcoord + vec2(0.0, 1.0));
   //if (self_color.rgb == vec3(1.0, 1.0, 1.0))
  /* vec4 white_color = vec4(255.0,255.0,255.0,1.0)
   if abs(self_color-right_color)<
   {
	if (right_color.rgb != vec3(1.0, 1.0, 1.0)){self_color.rgb = right_color.rgb;}
	if (left_color.rgb != vec3(1.0, 1.0, 1.0)){self_color.rgb = left_color.rgb;}
	if (up_color.rgb != vec3(1.0, 1.0, 1.0)){self_color.rgb = up_color.rgb;}
	if (down_color.rgb != vec3(1.0, 1.0, 1.0)){self_color.rgb = down_color.rgb;}
	}
   */
    //Set the output the vertex color multiplied by texture color of each pixel.
    gl_FragColor = self_color * texture2D( gm_BaseTexture, v_vTexcoord );
} 