#version 120

void main() {
    gl_TexCoord[0] = gl_MultiTexCoord0; // Pass texture coordinates to fragment shader
    gl_Position = ftransform();        // Transform vertex position
}
