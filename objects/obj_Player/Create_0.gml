
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
playerInvinciblity = false;
firePassive = 0;

// special cost values
fireSpecialCost = 10;
waterSpecialCost = 10;
earthSpecialCost = 10;
airSpecialCost = 10;

// special damage values
fireballDamage = 5;
fireballExplosionDamage = 10;
fireSelfExplosion = 19;




rowIndex = 0;
colorSets = 4;

vOffset = shader_get_uniform(shdr_paletteSwap, "Offset");
vNormal = 0;

paletteSwapSampler = shader_get_sampler_index(shdr_paletteSwap, "Palette");
texturePalette = sprite_get_texture(spr_shaderTexture, 0);

state = Wizards.water;

enum Wizards{
	fire,
	water,
	earth,
	air
}