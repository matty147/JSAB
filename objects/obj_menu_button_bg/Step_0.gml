if move
{
	if global.pop_up
	{
		if hidden && instance.pop_up_id == background_number || hidden && instance.pop_up_id == 0
		{
			display_text = true;
			image_alpha = clamp(image_alpha + 0.1, 0, 1);	
		}
		
		x = lerp(x,moved_position_x,0.1);
	}else
	{
		if hidden
		{
			display_text = false;
			image_alpha = clamp(image_alpha - 0.05, 0, 1);	
		}
		
		x = lerp(x,original_x,0.1);
	}
	
	if instance.pop_up_id != background_number && background_number != 0
	{
		image_alpha = clamp(image_alpha - 0.05, 0, 1);	
		display_text = false;	
	}
}

if instance.menu_id == "0" || instance.menu_id == "5"
{
	if instance.show_game_select_button
	{
		needeed_scale = 0.42;
	}else needeed_scale = default_yscale;

	image_yscale = lerp(image_yscale,needeed_scale,0.1);
}
