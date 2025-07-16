/// @description Insert description here
// You can write your code in this editor
if global.pause
{
	if os_type != os_android
	{
		draw_set_valign(fa_top)
		draw_sprite_tiled(spr_lvlselectbg,0,scroll,scroll)
		draw_set_color(c_black)
		draw_rectangle(0,0,-10000,480,false)
		draw_rectangle(640,0,10000,480,false)
		draw_set_color(c_white)
		draw_sprite(spr_paused,0,192,128)
		draw_set_font(global.font)
		draw_set_halign(fa_center)
		draw_text(320,224,"RESUME")
		if room=room_househub || room=room_househub_extra || global.lives<=1
			draw_set_alpha(0.5)
		else
			draw_set_alpha(1)
		draw_text(320,256,"RETRY")
		draw_set_alpha(1)
		draw_text(320,288,"QUIT")
		draw_set_color(c_white)
		draw_set_halign(fa_left)
		draw_sprite(spr_menucursor,0,180,224 + cursor * 32)
	}
	if os_type=os_android
	{
		draw_sprite_tiled(spr_lvlselectbg,0,0+scrollx,0+scrolly)
		draw_set_color(c_black)
		draw_rectangle(0,0,-10000,480,false)
		draw_rectangle(640,0,10000,480,false)
		draw_set_color(c_white)
		draw_sprite(spr_paused,0,192,128)
		draw_sprite(spr_resume,0,160,224)
		if room=room_househub || room=room_househub_extra || global.lives<=1
		{
			draw_set_alpha(0.5)
		}
		else
		{
			draw_set_alpha(1)
		}
		draw_sprite(spr_redo,0,288,224)
		draw_set_alpha(1)
		draw_sprite(spr_quit,0,416,224)
	}
}