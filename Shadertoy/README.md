Compact visual art and related explorations (e.g. beautiful code by **zzznah**) form a good target for GPT-4 explorations.

Here I am revisiting my 2019 Shadertoy art and using that as a starting point.

After the first 2 conversations, it seems that a low-hanging fruit might be "interactive evolution", Ken Stanley style.

The third conversation is round 2 of interactive evolution: [round-2-interactive-evolution.md](round-2-interactive-evolution.md)

I think the last shader it produced (version 3 + version 2 combination) is the most interesting one: https://www.shadertoy.com/view/mdVSWV

Round 3 of interactive evolution produced rotation, but generally speaking I was unhappy with its creative input.

I should probably backtrack and either try to ask it to remix two shaders, or to introduce particular motifs in a more specific way.

Then I've asked GPT-4 to do a remix with a shader by Danilo Guanabara and then asked GPT-4 to fix and improve that remix
(see [first-remix-attempt.md](first-remix-attempt.md)) resulting in a rather brilliant
shader: https://www.shadertoy.com/view/cdySDt

I ended up manually fixing interactivity in that shader to a more desirable version (and upon further reflection I slowed it
down 4-fold to make it similar in speed to my shaders; it has been way too fast for my taste): https://www.shadertoy.com/view/csySDt
(the source code of this shader is also here: [modified-remix.glsl](modified-remix.glsl))
