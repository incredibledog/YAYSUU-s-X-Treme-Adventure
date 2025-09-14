ini_open("savedata.ini")
audio_master_gain(ini_read_real("settings","volume",1))
global.sensitivity=ini_read_real("settings","sensitivity",0.35)
global.controlalpha=ini_read_real("settings","controlalpha",0.5)
window_set_fullscreen(ini_read_real("settings","fullscreen",false))
global.screenshake=ini_read_real("settings","screenshake",true)
global.borders=ini_read_real("settings","borders",true)
global.keytype=ini_read_real("settings","keytype",-1)
global.speedrun=ini_read_real("settings","speedrun",false)
global.screenscale=ini_read_real("settings","screenscale",1)
ini_close()
window_set_size(640*global.screenscale,480*global.screenscale)
global.voicelines=false
audio_group_load(voicelines)
window_enable_borderless_fullscreen(true)
global.trial=false
global.font=font_add_sprite_ext(spr_text,"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ.,:!?-",false,0)
global.subtitlefont=font_add_sprite_ext(spr_subtitlefont, "()[]!#$%'*,.:-/+?@^abcdefghijklmnopqrstuvwxyz~{}0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ",false,0)
global.optfont=font_add_sprite_ext(spr_text_options,"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ.,:!?-",false,0)
global.smalloptfont=font_add_sprite_ext(spr_smalloptionstext,"ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,!?:-_()+%'abcdefghijklmnopqrstuvwxyz✓✗",false,0)
global.inlevel = false
global.nextroom = room_idlogo
axislh = gamepad_axis_value(0,gp_axislh)
axislv = gamepad_axis_value(0,gp_axislv)
scr_changecharacter("Y")
global.currentsong = -1
global.jumpscare = false
global.debugmessage = ""
global.timer = 0
global.score = 0
global.checkpoint=false
global.coins=0
global.hp = 3
global.maxhp = 3
global.bosshp = 6
global.maxbosshp = 6
global.scoreadd = 0
global.lives=3
global.showcollision = false
global.combo = 0
global.inboss = false
global.levelloadtype = loadtype.menu
global.inhub = false
global.globaltimer = 0
global.debugmessageoffset = 0
global.skibispin = false
global.quickmenu = false
windowtimer = 0
windowname = ""
newwindowname = ""
windowpos = 0
global.pal = false
if (global.pal)
{
	global.defaultfps = 50
	global.animationscale = 5/6
}
else
{
	global.defaultfps = 60
	global.animationscale = 1
}
game_set_speed(global.defaultfps, gamespeed_fps)

global.totalobjectidcount = 100
while(object_exists(global.totalobjectidcount)) {
	global.totalobjectidcount++;
}

if (os_type == os_android)
	global.inputtype = 3
else if (gamepad_is_connected(0))
	global.inputtype = 2
else
	global.inputtype = global.keytype

instance_create_depth(0,0, 100, obj_camera)
instance_create_depth(0,0, depth + 1, obj_fadeblack)
instance_create_depth(0,0, 100, obj_player)
instance_create_depth(0,0, 100, obj_hud)
instance_create_depth(0,0, 100, obj_parallax)
//instance_create_depth(128,416,100,obj_subtitle)
instance_create_depth(0,0, 100,obj_titlecard)
instance_create_depth(0,0, 100, obj_pause)
instance_create_depth(0,0, 100, obj_persistentachchecker)
randomize()

global.indev = true
global.prevroom = room_initbruv
room_goto(room_idlogo)