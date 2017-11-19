uniform mat4 u_tf;
uniform mat4 u_model;
uniform mat3 u_nm;

attribute vec3 a_pos;
attribute vec3 a_normal;

varying vec3 v_pos;
varying vec3 v_normal;


void main () {
  vec4 pos = vec4(a_pos, 1.0);

  v_pos = (u_model * pos).xyz;
  v_normal = u_nm * a_normal;
  gl_Position = u_tf * pos;
}