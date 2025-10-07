/// @description Insert description here
// You can write your code in this editor
var p1char = global.char
var p2char = global.p2char
var formermainplayer = global.mainplayer
var formerotherplayer = global.otherplayer
global.char = p2char
global.p2char = p1char
global.mainplayer.isotherplayer = true
global.mainplayer = formerotherplayer
global.otherplayer.isotherplayer = false
global.otherplayer = formermainplayer