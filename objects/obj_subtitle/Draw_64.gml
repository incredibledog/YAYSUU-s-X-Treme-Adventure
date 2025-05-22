/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.subtitlefont)
//if instance_exists(obj_hint1)
//{
//	if obj_hint1.hint1=true
//	{
//		draw_set_font(global.subtitlefont)
//		draw_text_yxa(x,y-yoff,obj_hint1.hint1string,"black",false)
//		draw_set_font(global.font)
//	}
//}
//if instance_exists(obj_hint2)
//{
//	if obj_hint2.hint2=true
//	{
//		draw_set_font(global.subtitlefont)
//		draw_text_yxa(x,y-yoff,obj_hint2.hint2string,"black",false)
//		draw_set_font(global.font)
//	}
//}
//if instance_exists(obj_hint3)
//{
//	if obj_hint3.hint3=true
//	{
//		draw_set_font(global.subtitlefont)
//		draw_text_yxa(x,y-yoff,obj_hint3.hint3string,"black",false)
//		draw_set_font(global.font)
//	}
//}
//if instance_exists(obj_hint4)
//{
//	if obj_hint4.hint4=true
//	{
//		draw_set_font(global.subtitlefont)
//		draw_text_yxa(x,y-yoff,obj_hint4.hint4string,"black",false)
//		draw_set_font(global.font)
//	}
//}
//if instance_exists(obj_hint5)
//{
//	if obj_hint5.hint5=true
//	{
//		draw_set_font(global.subtitlefont)
//		draw_text_yxa(x,y-yoff,obj_hint5.hint5string,"black",false)
//		draw_set_font(global.font)
//	}
//}
//if instance_exists(obj_hint6)
//{
//	if obj_hint6.hint6=true
//	{
//		draw_set_font(global.subtitlefont)
//		draw_text_yxa(x,y-yoff,obj_hint6.hint6string,"black",false)
//		draw_set_font(global.font)
//	}
//}
if audio_is_playing(snd_tutorialvo1)
{
	draw_text_yxa(x,y-yoff,"Press the JUMP button \nto jump!","purple",true)
}
if audio_is_playing(snd_tutorialvo2_y)
{
	draw_text_yxa(x,y-yoff,"Press DOWN in the air \nto perform a bounce!","purple",true)
}
if audio_is_playing(snd_tutorialvo2_t)
{
	draw_text_yxa(x,y-yoff,"Press the JUMP button again \nto perform a double-jump!","purple",true)
}
if audio_is_playing(snd_tutorialvo3_y)
{
	draw_text_yxa(x,y-yoff,"Airdash over the gap by \npressing the DASH button \nmid-air!","purple",true)
}
if audio_is_playing(snd_tutorialvo3_t)
{
	draw_text_yxa(x,y-yoff,"Use the double-jump to \ncross the gap!","purple",true)
}
if audio_is_playing(snd_tutorialvo4_y)
{
	draw_text_yxa(x,y-yoff,"If you press the DASH button \nwhilst grounded, \nyou will slide!","purple",true)
}
if audio_is_playing(snd_tutorialvo4_t)
{
	draw_text_yxa(x,y-yoff,"Press the DASH button whilst \nstanding or crouching to attack \nthe enemy!","purple",true)
}
if audio_is_playing(snd_tutorialvo5_y)
{
	draw_text_yxa(x,y-yoff,"Use all the moves you have \nlearned to take out the enemies!","purple",true)
}
if audio_is_playing(snd_tutorialvo5_t)
{
	draw_text_yxa(x,y-yoff,"Press DOWN mid-air to stomp \nthe enemies!","purple",true)
}
if audio_is_playing(snd_tutorialvo6)
{
	draw_text_yxa(x,y-yoff,"Hold down the RUN button \nfor a boost of speed!","purple",true)
}
if audio_is_playing(snd_chillfields1vo1_y)
{
	draw_text_yxa(x,y-yoff,"I gotta go find my cat!","white",true)
}
if audio_is_playing(snd_chillfields1vo2_y)
{
	draw_text_yxa(x,y-yoff,"Wheeee!","white",true)
}
if audio_is_playing(snd_chillfields1vo3_y)
{
	draw_text_yxa(x,y-yoff,"Oh. I didn't know I could go \ndown here.","white",true)
}
if audio_is_playing(snd_chillfields1vo4_y)
{
	draw_text_yxa(x,y-yoff,"Sweet! A secret!","white",true)
}
if audio_is_playing(snd_chillfields1vo5_y)
{
	draw_text_yxa(x,y-yoff,"Hang in there, buddy...","white",true)
}
if audio_is_playing(snd_chillfields2vo1_y)
{
	draw_text_yxa(x,y-yoff,"Gotta get rid of these \nbots first.","white",true)
}
if audio_is_playing(snd_chillfields2vo2_y)
{
	draw_text_yxa(x,y-yoff,"Aw man. I gotta go down there!","white",true)
}
if audio_is_playing(snd_chillfields2vo3_y)
{
	draw_text_yxa(x,y-yoff,"Woaaahhh!!!","white",true)
}
if audio_is_playing(snd_chillfields2vo4_y)
{
	draw_text_yxa(x,y-yoff,"There's more??","white",true)
}
if audio_is_playing(snd_chillfields2vo5_y)
{
	draw_text_yxa(x,y-yoff,"This cave gives me the creeps.","white",true)
}
if audio_is_playing(snd_chillfields2vo6_y)
{
	draw_text_yxa(x,y-yoff,"Made it back! Phew!","white",true)
}
if audio_is_playing(snd_boss1vo_y)
{
	draw_text_yxa(x,y-yoff,"You're not gettin' away \ntill you tell me where my \ncat is!","white",true)
}
if audio_is_playing(snd_bossintro1_line1_y)
{
	draw_text_yxa(x,y-yoff,"What the... another robot?","purple",true)
}
if audio_is_playing(snd_bossintro1_line2)
{
	draw_text_yxa(x,y-yoff,"TARGET LOCKED","yellow",false)
}
if audio_is_playing(snd_bossintro1_line3_y)
{
	draw_text_yxa(x,y-yoff,"Must be one of Fringlebert's \ncreations...","purple",true)
}
if audio_is_playing(snd_bossintro1_line4)
{
	draw_text_yxa(x,y-yoff,"PREPARING TO ELIMINATE","red",false)
}
if room=room_levelselect
{
	draw_text(x,y,"Press 1 for Chill fields stage 1\nPress 2 for Tutorial Stage\nPress 3 for Chill fields stage 2")
}
if room=room_soundtest
{
	if !gamepad_is_connected(0)
	{
		draw_text(x,y,string("Welcome to sound test \n") + string(obj_sndtest.sndname) + string("\nPress left or right to cycle \nZ to play \nX to stop \nC to leave"))
	}
	if gamepad_is_connected(0)
	{
		draw_text(x,y,string("Welcome to sound test \n") + string(obj_sndtest.sndname) + string("\nPress left or right to cycle \nA to play \nB to stop \nX to leave"))
	}
}
draw_set_font(global.font)