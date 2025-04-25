/// @description Insert description here
// You can write your code in this editor
select=0
currentlevel=room_tutorial
endlevel=room_tutorial
lvlname="Tutorial Stage"
sprname=spr_tutorialscroll
ini_open("savedata.ini")
hiscore=ini_read_real("records",string(endlevel)+string("_score"),0)
timer = ini_read_real("records",string(endlevel)+string("_time"),359999)
timestring=string_replace_all(string_format(floor(timer / 3600), 2, 0) + ":" + string_format(floor(timer / 60) % 60, 2, 0) + "." + string_format(timer % 60, 2, 0), " ", "0")
ini_close()
xoffset=0
playingmusic[0] = audio_play_sound(mus_trialmenu_t, 1, true, 1)
playingmusic[1] = audio_play_sound(mus_trialmenu_cf1, 1, true, 0)
playingmusic[2] = audio_play_sound(mus_trialmenu_cf2, 1, true, 0)
playingmusic[3] = audio_play_sound(mus_trialmenu_cf3, 1, true, 0)
playingmusic[4] = audio_play_sound(mus_trialmenu_mm1, 1, true, 0)
playingmusic[5] = audio_play_sound(mus_trialmenu_gc, 1, true, 0)
playingmusic[6] = audio_play_sound(mus_trialmenu_t, 1, true, 1)
changedlevel = false