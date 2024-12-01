#version 120

varying vec2 texCoord0;

void main() {
    // Transform the vertex position
    gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;

    // Pass the texture coordinates to the fragment shader, flipping the Y-axis
    texCoord0 = gl_MultiTexCoord0.xy;
    texCoord0.y = 1.0 - texCoord0.y;
}
