/// @description Insert description here
// You can write your code in this editor
if global.pause
{
	if !(os_type=os_android)
	{
		draw_sprite_tiled(spr_lvlselectbg,0,0+scroll,0+scroll)
		draw_set_color(c_black)
		draw_rectangle(0,0,-10000,480,false)
		draw_rectangle(640,0,10000,480,false)
		draw_set_color(c_white)
		draw_sprite(spr_paused,0,192,128)
		draw_set_font(global.font)
		draw_text(224,224,"RESUME")
		if room=room_househub || room=room_househub_extra || global.lives<=1
		{
			draw_set_alpha(0.5)
		}
		else
		{
			draw_set_alpha(1)
		}
		draw_text(242,256,"RETRY")
		draw_set_alpha(1)
		draw_text(256,288,"QUIT")
		draw_set_color(c_white)
		if cursor=0
		{
			draw_sprite(spr_menucursor,0,180,224)
		}
		if cursor=1
		{
			draw_sprite(spr_menucursor,0,180,256)
		}
		if cursor=2
		{
			draw_sprite(spr_menucursor,0,180,288)
		}
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