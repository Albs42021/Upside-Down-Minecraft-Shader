#version 120

// Sample from the texture provided by Minecraft
uniform sampler2D gcolor;

void main() {
    // Retrieve the texture coordinate for the current pixel
    vec2 texCoord = gl_TexCoord[0].st;

    // Sample the texture at the given texture coordinate
    vec4 color = texture2D(gcolor, texCoord);

    // Calculate the grayscale luminance
    float luminance = 0.299 * color.r + 0.587 * color.g + 0.114 * color.b;

    // Output the color as grayscale
    gl_FragColor = vec4(luminance, luminance, luminance, color.a);
}
