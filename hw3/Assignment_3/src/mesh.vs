# version 330 core

layout(location = 0) in vec3 aPos;
layout(location = 1) in vec3 aNormal;

uniform mat4 view;
uniform mat4 proj;

out vec3 normal;

void main() {
	gl_Position = proj * view * vec4(aPos, 1);
	normal = aNormal;
}