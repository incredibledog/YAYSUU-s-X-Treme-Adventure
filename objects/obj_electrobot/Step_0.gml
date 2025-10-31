if (bigtimer == 18 * 60)
{
				if (obj_player.x > 320)
					instance_create_depth(160,-64,depth,obj_fallinggoalflag)
				else
					instance_create_depth(480,-64,depth,obj_fallinggoalflag)
}
bigtimer++