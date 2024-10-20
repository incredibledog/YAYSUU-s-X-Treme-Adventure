/// @description initial variables
// You can write your code in this editor
hsp = 0; // horizontal speed
vsp = 0; // vertical speed
grv = 0.3; // gravity
wsp = 4; // max speed
dsh = 0; // dash
hpush = 0; // horizontal push
jmp = -7; // jump strength
jumpd = false; // jumped
djumpd = false; // double jumped
dshed = false; // airdashed
stmpd = false; // stomped
hurtd = false; // playing hurt animation (and knockback)
dieded = false; // is dead
vulnerable = true;
bounce = false;
winning = false
hurtt = 0; // hurt timer
sprite_index = spr_yaysuu_idle
global.hp=3
grounded = 1
prevgrounded = 1
checkscale = 0.1
mask_index = spr_collisionmask
maxloop = 1000