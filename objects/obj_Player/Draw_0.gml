shader_set(shdr_paletteSwap);

texture_set_stage(paletteSwapSampler, texturePalette);

shader_set_uniform_f(vOffset, vNormal);

draw_self();

shader_reset();