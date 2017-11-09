#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexCoord;
out vec4 vertexColor;
out vec2 TexCoord;
uniform vec4 color;
uniform vec4 offset;
uniform mat4 transform;
uniform mat4 mvp;
void main()
{
    gl_Position = mvp * vec4(aPos, 1);
    vertexColor = vec4(aColor,1);
	TexCoord = aTexCoord;
};