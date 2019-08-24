
// Inherit the parent event
event_inherited();

hitpoints = max_hitpoints;
changeTimer = 15;
can_switch = true;
attackTimer = 20;
can_attack = true;
attack_offset = 4;


static_gravity_scale = gravity_scale; // do not modify

canAirJump = false;
numAirJumps = 1;
maxAirJumps = 1;

attack_damage = 5;

rowIndex = 0;
colorSets = 4;

vOffset = shader_get_uniform(shdr_paletteSwap, "Offset");
vNormal = 0;

paletteSwapSampler = shader_get_sampler_index(shdr_paletteSwap, "Palette");
texturePalette = sprite_get_texture(spr_shaderTexture, 0);

state = Wizards.water;
scr_Passives();

enum Wizards{
	fire,
	water,
	earth,
	air
}