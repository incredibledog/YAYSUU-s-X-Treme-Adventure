/// @description Insert description here
// You can write your code in this editor
draw_set_valign(fa_top)
draw_set_font(global.font)
draw_text(32,32,"ACHIEVEMENTS")
for (var i=1; i<=9; i++)
{
	if getachievement(i)
	{
		draw_sprite(spr_achievement,i,32+(i-1)*64,224)
	}
	else {
		draw_sprite(spr_achievement,0,32+(i-1)*64,224)
	}
}
draw_sprite(spr_achievementcursor,0,32+(chos-1)*64,224)
draw_set_font(global.subtitlefont)
draw_sprite(spr_dialoguebox,0,0,0)
draw_text_yxa(32,384,getachievementname(chos)+"\n"+description[chos],"white",true,608)