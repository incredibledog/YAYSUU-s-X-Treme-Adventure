ini_open("savedata.ini")
// SETTINGS SAVEDATA INITIALIZATION
audio_master_gain(ini_read_real("settings","volume",1))
global.sensitivity=ini_read_real("settings","sensitivity",0.35) // actually deadzone but not gonna change the variable name now
global.controlalpha=ini_read_real("settings","controlalpha",0.5)
global.controldistance=ini_read_real("settings","controldistance",0)
window_set_fullscreen(ini_read_real("settings","fullscreen",false))
global.screenshake=ini_read_real("settings","screenshake",true)
global.borders=ini_read_real("settings","borders",true)
global.keytype=ini_read_real("settings","keytype",-1)
global.speedrun=ini_read_real("settings","speedrun",false)
global.screenscale=ini_read_real("settings","screenscale",1)
// P1 CONTROLS SAVEDATA INITIALIZATION
global.p1_controlslot=ini_read_real("controls","p1controlslot",0)
global.p1_leftkey=ini_read_real("controls","p1leftkey",vk_left)
global.p1_rightkey=ini_read_real("controls","p1rightkey",vk_right)
global.p1_upkey=ini_read_real("controls","p1upkey",vk_up)
global.p1_downkey=ini_read_real("controls","p1downkey",vk_down)
global.p1_jumpkey=ini_read_real("controls","p1jumpkey",ord("Z"))
global.p1_dashkey=ini_read_real("controls","p1dashkey",ord("X"))
global.p1_runkey=ini_read_real("controls","p1runkey",ord("C"))
global.p1_startkey=ini_read_real("controls","p1startkey",vk_enter)
global.p1_autorun=ini_read_real("controls","autorun",true)
global.menubuttontype=ini_read_real("controls","menubuttontype",false)
global.vibration=ini_read_real("controls","vibration",true)
// P2 CONTROLS SAVEDATA INITIALIZATION
global.p2_controlslot=ini_read_real("controls","p2controlslot",1)
global.p2_leftkey=ini_read_real("controls","p2leftkey",ord("J"))
global.p2_rightkey=ini_read_real("controls","p2rightkey",ord("L"))
global.p2_upkey=ini_read_real("controls","p2upkey",ord("I"))
global.p2_downkey=ini_read_real("controls","p2downkey",ord("K"))
global.p2_jumpkey=ini_read_real("controls","p2jumpkey",ord("O"))
global.p2_dashkey=ini_read_real("controls","p2dashkey",ord("P"))
global.p2_runkey=ini_read_real("controls","p2runkey",ord("U"))
global.p2_startkey=ini_read_real("controls","p2startkey",ord("Y"))
global.p2_autorun=ini_read_real("controls","p2autorun",true)
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
axislh = gamepad_axis_value(global.p1_controlslot,gp_axislh)
axislv = gamepad_axis_value(global.p1_controlslot,gp_axislv)
p2axislh = gamepad_axis_value(global.p2_controlslot,gp_axislh)
p2axislv = gamepad_axis_value(global.p2_controlslot,gp_axislv)
global.char = "Y"
global.p2char = "T" // SO LONG, USELESS FUNCTIONS!
global.currentsong = -1
global.jumpscare = false
global.debugmessage = ""
global.timer = 0
global.score = 0
global.checkpoint=false
global.coins=0
global.hp = 3
global.maxhp = 3
global.p2hp = 3
global.p2maxhp = 3
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
global.invertskin = false
if os_type=os_android
	global.mobile = true
else 
	global.mobile = false
global.multiplayer = false
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
global.inputtype = 0
global.p2inputtype = 0

instance_create_depth(0,0, 100, obj_camera)
instance_create_depth(0,0, depth + 1, obj_fadeblack)
global.mainplayer = instance_create_depth(0,0, 100, obj_player)
global.otherplayer = noone
with (global.mainplayer)
{
	isotherplayer=false
}

global.firstplayertouch = noone;
global.secondplayertouch = noone;

instance_create_depth(0,0, 100, obj_hud)
instance_create_depth(0,0, 100, obj_parallax)
//instance_create_depth(128,416,100,obj_subtitle)
instance_create_depth(0,0, 100,obj_titlecard)
instance_create_depth(0,0, 100,obj_mobilecontrols)
instance_create_depth(0,0, 100, obj_pause)
instance_create_depth(0,0, 100, obj_persistentachchecker)
randomize()

global.indev = false
global.prevroom = room_initbruv
room_goto(room_idlogo)