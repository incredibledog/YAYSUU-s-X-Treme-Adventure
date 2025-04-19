/// @description Variables
global.hp = 3;
global.maxhp = 3;
if room=room_chillfields_boss
{
	global.bosshp = 6
	global.maxbosshp = 6
}
hide=false
draw_set_font(global.font)
timer=0
minutes=0
seconds=0
timebonus=1200
timerstring="00:00"
//To add more hearts, add something to the "maxhp".

