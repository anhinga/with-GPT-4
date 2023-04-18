#define t 0.25*iTime
#define r iResolution.xy

float fract_sin_dot(vec2 uv) {
    return fract(sin(dot(
        vec2(sin(3. * uv.x) * cos(4. * uv.y), sin(8. * uv.y) * cos(5. * uv.x)),
        0.005 * iMouse.xy + vec2(1.0, 1.0))) *
        4. + 0.5 * t);
}

void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec3 c;
    float l, z = t;
    vec2 fragNorm = fragCoord / r;

    for (int i = 0; i < 3; i++) {
        vec2 uv, p = fragNorm;
        uv = p;
        p -= 0.5;
        p.x *= r.x / r.y;
        z += 0.07;
        l = length(p);
        uv += p / l * (sin(z) + 1.) * abs(sin(l * 9. - z - z));
        c[i] = fract_sin_dot(uv + vec2(float(i) * 0.1, float(i) * 0.2));
    }

    fragColor = vec4(c / (l + 0.5), 1.0);
}
