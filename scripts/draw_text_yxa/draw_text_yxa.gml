// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_yxa(x,y,textstring,color,dropshadow,maxlength = 640,sprite = -1,subimg = 0){
	var colorhex = #FF00FF
	switch color {
		default:
		colorhex = #FFF1E8 
		break;
		case "none":
		colorhex = #FFFFFF 
		break;
	}
	draw_set_font(global.subtitlefont) // NOT SO FAST!
	var alpha = draw_get_alpha()
	var xi = -1
	var yi = 0
	var codei = 0
	var shake = false
	var xshakeoffset = 0
	var yshakeoffset = 0
	
	textstring = string_wrap(string_replace_all(textstring, "\\n", "\n"),maxlength); // gotta love gamemaker!
	var alignleft=draw_get_halign()=fa_right ? string_width(textstring) : 0
	
	for (var i = 1; i<=string_length(textstring); i++) {
		xi++
		var ch = string_char_at(textstring, i)
		if (ord(ch) == 10) || (ord(ch) == 13)
		{
			yi+=16
			xi=-1
			continue;
		}
		if ch == "`"
		{
			i++
			switch string_char_at(textstring, i)
			{
				case "s":
				shake = true
				i++
				codei--
				break;
				case "u":
				shake = false
				i++
				codei--
				break;
				case "d":
				draw_sprite(sprite,subimg,x+(16*xi)-alignleft,y+yi)
				i++
				codei--
				break;
				case "c":
				i++
				codei--
				switch string_char_at(textstring, i)
				{
					default:
					colorhex = #FFF1E8 
					break;
					case "n":
					colorhex = #FFFFFF 
					break;
				}
				i++
				codei--
				break;
			}
			xi -= 1;
			i -= 1;
			continue;
		}
		xshakeoffset = 0
		yshakeoffset = 0
		draw_text_ext_color(x+(16*(xi))+(xshakeoffset)-alignleft,y+(yi)+(yshakeoffset),string_char_at(textstring,i),16,maxlength,colorhex,colorhex,colorhex,colorhex,alpha)
	}
}