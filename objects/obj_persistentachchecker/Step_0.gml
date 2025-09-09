/// @description Insert description here
// You can write your code in this editor
if global.inlevel && !global.inboss && !instance_exists(obj_enemy) && !getachievement(1)
{
	obtainachievement(1)
}
if room=room_chillfields_2b && !instance_exists(obj_coin) && !getachievement(5)
{
	obtainachievement(5)
}
if room=room_mysticmanor_1 && !getachievement(6)
{
	if obj_npc_vip1.talked=true && obj_npc_vip2.talked=true && obj_npc_vip3.talked=true && obj_npc_vip4.talked=true
	{
		obtainachievement(6)
	}
}
if room=room_mysticmanor_2 && !getachievement(7)
{
	if obj_npc_bed2.talked=true && obj_npc_closet2.talked=true && obj_npc_lockeddoor2.talked=true && obj_npc_tv2.talked=true
	{
		obtainachievement(7)
	}
}
if instance_exists(obj_stageclear) && !getachievement(9)
{
	if obj_stageclear.rank=4
	{
		obtainachievement(9)
	}
}