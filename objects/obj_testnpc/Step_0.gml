/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && obj_player.grounded
{
	obj_player.showarrow = true
	if (global.key_upp) && talking=false
	{
		dialogueprogress=0
		talking=true
		obj_player.newstate = playerstates.inactive
		if (global.char == "Y")
			obj_player.sprite_index = spr_yaysuu_idle
		else if (global.char == "T")
			obj_player.sprite_index = spr_teddy_idle
		else if (global.char == "C")
			obj_player.sprite_index = spr_cotton_idle
	}
}
if talking
{
	if !instance_exists(obj_dialoguebox)
	{
		dialogueprogress++
		switch dialogueprogress
		{
			case 1:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text="test npc! i am definitely the real fazmade. ...or is it vassie?"
				color="red"
				name="Vassie"
				dialoguesound=snd_dialogue_vassie
			}
			break;
			case 2:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text="look i can have different text colors. WOAH!"
				color="white"
				name="Vassie"
				dialoguesound=snd_dialogue_vassie
			}
			break;
			case 3:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text="this is yaysuu talking. you can tell because the text is purple and the name is different."
				color="purple"
				name="YAYSUU"
			}
			break;
			case 4:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text="ASS!!!! SINGLE DIALOGUE SOUND!"
				color="dred"
				playaudiosingle=true
				dialoguesound=snd_bossintro1_line1_y
			}
			break;
			case 5:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text="Oh... this is a story 'bout a guy named Al, and he lived in a sewer with his hamster pal, but the sanitation workers really didn't approve, so he packed up his accordion and had to move to a city in Ohio where he lived in a tree, and he worked in a nasal decongestant factory, and he played on the company bowling team, and every single night he had a strange recurring dream where he was wearing lederhosen in a vat of sourcream, but that's really not important to the story!"
				color="white"
				nobox=true
			}
			break;
			case 6:
			talking=false
			obj_player.newstate=playerstates.normal
		}
	}
}