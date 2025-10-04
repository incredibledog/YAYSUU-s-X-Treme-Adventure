/// @description Insert description here
// You can write your code in this editor
chos=1
selected=false
delay=0
global.multiplayer = false
global.char="Y"
teddyavailable = true
prevchos = 0
draw_set_font(global.font)
charname="YAYSUU"
charlife=0
ini_open("savedata.ini")
savelives[0]=ini_read_real("fileY","lives",3)
savelives[1]=ini_read_real("fileT","lives",3)
savescore[0]=ini_read_real("fileY","score",0)
savescore[1]=ini_read_real("fileT","score",0)
savestage[0]=ini_read_real("fileY","stage",0)
savestage[1]=ini_read_real("fileT","stage",0)
saveday[0]=ini_read_real("fileY","day",0)
saveday[1]=ini_read_real("fileT","day",0)
savemonth[0]=ini_read_real("fileY","month",0)
savemonth[1]=ini_read_real("fileT","month",0)
saveyear[0]=ini_read_real("fileY","year",0)
saveyear[1]=ini_read_real("fileT","year",0)
ini_close()
currentstage=room_househub
lvlname="Chill Fields Stage 1"
gameprogress=0