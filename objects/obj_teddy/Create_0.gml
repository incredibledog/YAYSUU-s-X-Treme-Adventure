/// @description initial variables
// You can write your code in this editor
hsp = 0;
vsp = 0;
grv = 0.3;
wsp = 4;
dsh = 0;
hpush = 0;
jmp = -7;
jmps = 0
stmpd = false;
hurtd = false;
dieded = false;
vulnerable = true;
hurtt = 0;
winning = false;
followingqueue=ds_queue_create()
x=obj_player.x-obj_player.image_xscale*64
yearnedx=x
yearnedy=y
if global.char="Y"
{
	sprite_index = spr_teddy_idle
}
else {
	sprite_index = spr_yaysuu_idle
}
global.hp=3


