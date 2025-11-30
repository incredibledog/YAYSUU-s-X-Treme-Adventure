settings_init()
audio_group_load(trialmenu)
audio_group_load(voicelines)
window_enable_borderless_fullscreen(true)
global.menurepeat_delay=15
global.menurepeat_holddelay=7
global.trial=false
global.arcade=false
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
global.cutscenestate = 0
global.jumpscare = false
global.debugmessage = ""
global.timer = 0
global.score = 0
global.checkpoint=false
global.firstroom=false
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
global.skibispin = false // FIX THIS NEXT RELEASE! Thank you.
global.bobcat = false
global.godmode = false
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

global.indev = true
global.prevroom = room_initbruv
room_goto(room_idlogo)