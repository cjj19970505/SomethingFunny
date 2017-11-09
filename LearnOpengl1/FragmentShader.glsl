#version 330 core
out vec4 FragColor;
in vec4 vertexColor;
in vec2 TexCoord;
uniform float time;
uniform sampler2D texture1;
uniform sampler2D texture2;
uniform float trans;
void main()
{
   // FragColor = vertexColor*(sin(time)+1)/2;
	//FragColor = vec4(TexCoord,1,1);
	//FragColor = texture(texture1, TexCoord);
    //FragColor = mix(texture(texture1, TexCoord),texture(texture2, vec2(TexCoord.x,TexCoord.y)),trans);
    FragColor = clamp(vertexColor,0,1);
    //FragColor = vec4(0,0,0,1);
    //FragColor = texture(texture1, TexCoord);
    //FragColor = texture(texture2, TexCoord);
    //FragColor = ourColor;
}
								