#version 410

layout(location = 0) in vec3 v_position;
layout(location = 1) in vec3 v_normal;
layout(location = 2) in vec2 v_texture_coord;

uniform mat4 Model;
uniform mat4 View;
uniform mat4 Projection;

layout(location = 0) out vec2 texture_coord;
layout(location = 1) out vec3 world_position;
layout(location = 2) out vec3 world_normal;

void main()
{
	// TODO

	texture_coord = v_texture_coord;
	world_position = (Model * vec4(v_position, 1)).xyz;
	world_normal = (Model * vec4(v_normal, 1)).xyz;
	gl_Position = Projection * View * Model * vec4(v_position, 1);
}
