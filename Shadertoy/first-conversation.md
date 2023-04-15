Starting with my "Double warp" interactive shader: https://www.shadertoy.com/view/3tSGzV

ME:

I'd like to try to modify the following shader in various interesting ways: float fract_sin_dot (vec2 uv) {
        return fract(sin(dot(
                         // uv.xy,
                         // vec2(sin(4.*uv.x), sin(10.*uv.y)),
                         vec2(sin(4.*uv.x), uv.y),
                         0.1*iMouse.xy+vec2(1.0,1.0)))*
        4. + 0.5*iTime);
}

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 uv = fragCoord/iResolution.xy;

    vec3 color = vec3(fract_sin_dot( uv ),
                      fract_sin_dot( vec2(sin(4.*uv.x), sin(10.*uv.y)) ),
                      fract_sin_dot( vec2(sin(4.*uv.x), uv.y) ));

    fragColor = vec4(color,1.0);
}

GPT-4 gave me three different variants, all have been pretty interesting:

https://www.shadertoy.com/view/msKSDG

https://www.shadertoy.com/view/ddVSDG

GPT-4:

Below, I provide three variations of the original shader, changing the functions used, input parameters, and color components. Feel free to combine or mix these ideas to create even more unique visual effects.

**Variation 1: Different trigonometric functions**
In this variation, I replaced the sin() function with the cos() function to create a different pattern.

```glsl
float fract_cos_dot(vec2 uv) {
    return fract(cos(dot(
        vec2(cos(4. * uv.x), uv.y),
        0.1 * iMouse.xy + vec2(1.0, 1.0))) *
        4. + 0.5 * iTime);
}

void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv = fragCoord / iResolution.xy;

    vec3 color = vec3(fract_cos_dot(uv),
                      fract_cos_dot(vec2(cos(4. * uv.x), cos(10. * uv.y))),
                      fract_cos_dot(vec2(cos(4. * uv.x), uv.y)));

    fragColor = vec4(color, 1.0);
}
```

**Variation 2: Modify input parameters**
Here, I changed the input parameters to the sin() function to create a different pattern:

```glsl
float fract_sin_dot(vec2 uv) {
    return fract(sin(dot(
        vec2(sin(3. * uv.x), sin(8. * uv.y)),
        0.1 * iMouse.xy + vec2(1.0, 1.0))) *
        4. + 0.5 * iTime);
}

void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv = fragCoord / iResolution.xy;

    vec3 color = vec3(fract_sin_dot(uv),
                      fract_sin_dot(vec2(sin(3. * uv.x), sin(8. * uv.y))),
                      fract_sin_dot(vec2(sin(3. * uv.x), uv.y)));

    fragColor = vec4(color, 1.0);
}
```

_work in progress_

