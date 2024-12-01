#version 120

uniform sampler2D gbufferTex0; // Framebuffer texture (gbuffer stage 0)
varying vec2 texCoord0;

void main() {
    // Sample the texture with the flipped coordinates
    vec4 color = texture2D(gbufferTex0, texCoord0);
    gl_FragColor = color;
}
