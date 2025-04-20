ini_open("savedata.ini")
audio_master_gain(ini_read_real("settings","volume",1))
global.sensitivity=ini_read_real("settings","sensitivity",0.35)
global.controlalpha=ini_read_real("settings","controlalpha",0.5)
window_set_fullscreen(ini_read_real("settings","fullscreen",0))
global.screenshake=ini_read_real("settings","screenshake",1)
global.borders=ini_read_real("settings","borders",1)
global.inputtype=ini_read_real("settings","inputtype",-1)
ini_close()
global.voicelines=false
audio_group_load(voicelines)
window_enable_borderless_fullscreen(true)
global.trial=false
global.font=font_add_sprite_ext(spr_text,"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ.,:!?-",false,0)
global.subtitlefont=font_add_sprite_ext(spr_subtitlefont, "()[]!#$%'*,.:?@^abcdefghijklmnopqrstuvwxyz~{}0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ",false,0)
global.optfont=font_add_sprite_ext(spr_text_options,"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ.,:!?-",false,0)
	
instance_create_depth(0,0, depth, obj_hud)
instance_create_depth(0,0, depth, obj_pause)
instance_create_depth(0,0, depth, obj_mobilecontrols)
instance_create_depth(0,0, depth, obj_gamecontroller)
instance_create_depth(0,0, depth, obj_camera)
instance_create_depth(0,0, depth, obj_fadeblack)

if (global.inputtype == -1)
	room_goto(room_setupinput)
else
	room_goto(room_idlogo)