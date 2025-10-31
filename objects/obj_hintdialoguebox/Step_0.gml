/// @description Insert description here
// You can write your code in this editor
if (!finished)
{
    if (playaudiosingle && !hasplayedaudiosingle)
    {
        audio_play_sound(dialoguesound, 1, false);
        hasplayedaudiosingle = true;
    }
    
    if (progressdelay == 0)
    {
        progress++
        if (string_char_at(text, progress) == "." || string_char_at(text, progress) == "?" || string_char_at(text, progress) == "!" || string_char_at(text, progress) == ":") && string_char_at(text,progress+1) == " "
            progressdelay = 30;
        else if (string_char_at(text, progress) == ",") && string_char_at(text, progress+1) == " "
            progressdelay = 20;
        else
            progressdelay = 2;
        
        if (progress >= string_length(text))
        {
            finished = true;
        }
		else if (!playaudiosingle)
        {
			if !(string_char_at(text, progress)==" ")
			{
				audio_play_sound(dialoguesound, 1, false);
			}
        }
    }
    else
    {
        progressdelay--;
    }
}