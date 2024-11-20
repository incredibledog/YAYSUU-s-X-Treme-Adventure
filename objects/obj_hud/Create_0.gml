/// @description Variables
global.hp = 3;
global.maxhp = 3;
if room=room_chillfields_boss
{
	global.bosshp = 6
	global.maxbosshp = 6
}
hide=false
global.font= font_add_sprite_ext(spr_text,"0123456789ABCDEFGHIJKL-NOPQRSTUVWXYZ.,:!?-",false,0)
draw_set_font(global.font)
timer=0
minutes=0
seconds=0
timebonus=3000
timerstring="00:00"
//To add more hearts, add something to the "maxhp".

