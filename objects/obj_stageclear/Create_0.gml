/// @description Insert description here
// You can write your code in this editor
image_xscale=1.5
image_yscale=1.5
image_alpha=0
switch room
{
	case room_glowstickcity:
	bangsound=snd_glowstickcity_bang
	break;
	default:
	bangsound=snd_bang
	break;
}
begintimer=120
bangtimer=0
display=0
stageprogress=0
yearnedscore=0
// RANK SCORE REQUIREMENTS MIGHT NEED A FEW TWEAKS...
if global.score>=2500
{
	rank=4
}
else if global.score>=2000
{
	rank=3
}
else if global.score>=1500
{
	rank=2
}
else if global.score>=1000
{
	rank=1
}
else {
	rank=0
}
if global.char="Y"
	sprite_index=spr_stageclear_y
else if global.char="T"
	sprite_index=spr_stageclear_t
else if global.char="C"
	sprite_index=spr_stageclear_c
if instance_exists(obj_dialoguebox)
{
	instance_destroy(obj_dialoguebox)
}