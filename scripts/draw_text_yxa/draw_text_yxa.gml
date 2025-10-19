// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_yxa(x,y,textstring,color,dropshadow,maxlength = 640-x,sprite = -1,subimg = 0){
	var colorhex = #FF00FF
	switch color {
		case "white":
		colorhex = #FFF1E8 
		break;
		case "lgray":
		colorhex = #C2C3C7 
		break;
		case "dgray":
		colorhex = #5F574F 
		break;
		case "black":
		colorhex = #000000 
		break;
		case "dblue":
		colorhex = #1D2B53 
		break;
		case "dred":
		colorhex = #7E2553 
		break;
		case "dgreen":
		colorhex = #008751 
		break;
		case "brown":
		colorhex = #AB5236 
		break;
		case "red":
		colorhex = #FF004D 
		break;
		case "orange":
		colorhex = #FFA300 
		break;
		case "yellow":
		colorhex = #FFEC27 
		break;
		case "green":
		colorhex = #00E436 
		break;
		case "blue":
		colorhex = #29ADFF 
		break;
		case "purple":
		colorhex = #83769C 
		break;
		case "pink":
		colorhex = #FF77A8 
		break;
		case "peach":
		colorhex = #FFCCAA 
		break;
		case "none":
		colorhex = #FFFFFF 
		break;
		default:
		show_error("Hey! Dumbass! That's not a PICO 8 Color!!! Refer to draw_text_yxa for more details.",true)
		break;
	}
	draw_set_font(global.subtitlefont) // NOT SO FAST!
	var alpha = draw_get_alpha()
	var xi = 0
	var yi = 0
	var shake = false
	var shakeoffsetx = 0
	var shakeoffsety = 0
	var wrappedtext = string_wrap(textstring,maxlength)
	for (var i = 1; i<string_length(wrappedtext)+1; i++) {
		if string_char_at(wrappedtext,i)="\\"
		{
			i++
			if string_char_at(wrappedtext,i)="n"
			{
				yi++
				xi=0
				i++
			}
		}
		if string_char_at(wrappedtext,i)="`"
		{
			i++
			switch string_char_at(wrappedtext,i)
			{
				case "s":
				shake = true
				i++
				break;
				case "u":
				shake = false
				i++
				break;
				case "d":
				draw_sprite(sprite,subimg,x+(16*xi),y+yi-16)
				i++
				break;
				case "c":
				i++
				switch string_char_at(wrappedtext,i)
				{
					case "l":
					colorhex = #FFF1E8 
					break;
					case "e":
					colorhex = #C2C3C7 
					break;
					case "c":
					colorhex = #5F574F 
					break;
					case "a":
					colorhex = #000000 
					break;
					case "d":
					colorhex = #1D2B53 
					break;
					case "m":
					colorhex = #7E2553 
					break;
					case "w":
					colorhex = #008751 
					break;
					case "s":
					colorhex = #AB5236 
					break;
					case "r":
					colorhex = #FF004D 
					break;
					case "o":
					colorhex = #FFA300 
					break;
					case "y":
					colorhex = #FFEC27 
					break;
					case "g":
					colorhex = #00E436 
					break;
					case "b":
					colorhex = #29ADFF 
					break;
					case "f":
					colorhex = #83769C 
					break;
					case "p":
					colorhex = #FF77A8 
					break;
					case "t":
					colorhex = #FFCCAA 
					break;
					case "n":
					colorhex = #FFFFFF 
					break;
					default:
					show_error("Hey! Dumbass! That's not a PICO 8 Color!!! Refer to draw_text_yxa for more details.",true)
					break;
				}
				i++
				break;
			}
		}
		shakeoffsetx = shake?choose(-1,0,1):0
		shakeoffsety = shake?choose(-1,0,1):0
		if dropshadow
			draw_text_ext_color(x+(16*xi)+(shakeoffsetx)+1,y+(16*yi)+(shakeoffsety)+1,string_char_at(wrappedtext,i),16,maxlength,c_black,c_black,c_black,c_black,alpha/2)
		draw_text_ext_color(x+(16*xi)+(shakeoffsetx),y+(16*yi)+(shakeoffsety),string_char_at(wrappedtext,i),16,maxlength,colorhex,colorhex,colorhex,colorhex,alpha)
		xi++
	}
}