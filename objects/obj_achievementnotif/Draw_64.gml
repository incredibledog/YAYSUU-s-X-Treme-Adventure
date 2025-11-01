/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_sprite(spr_achievementnotif,0,640,480+voffset)
draw_set_alpha(alpha)
draw_sprite(spr_achievement,achiveid,560,400)
draw_set_halign(fa_right)
draw_set_font(global.subtitlefont)
draw_text_yxa(560,400,"Achievement unlocked!","yellow",true)
draw_text_yxa(560,416,+getachievementname(achiveid),"white",true)
draw_set_alpha(1)
draw_set_halign(fa_left)