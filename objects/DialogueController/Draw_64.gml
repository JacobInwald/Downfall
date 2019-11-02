/// @description Draw dialogue box

if(!fetch){

	draw_set_font(fontDialogue);
	
	var xOffset = 0;
	if(dialogueAvatar != ""){
		if(dialogueLeftFacing){
			xOffset = -32;
		} else {
			xOffset = 32;
		}
	}
	
	if(dialogueAtTop){
		var xPos = camera_get_view_width(view_camera[0]) / 2 - 96 - xOffset;
		var yPos = camera_get_view_height(view_camera[0]) / 2 - 140;
	} else {
		var xPos = camera_get_view_width(view_camera[0]) / 2 - 96 - xOffset;
		var yPos = camera_get_view_height(view_camera[0]) / 2 + 80;
	}
	// draw our dialogue box
	draw_set_halign(fa_left);
	draw_sprite(DialogueBox, 0 , xPos, yPos);
	draw_text_ext(xPos+ 10, yPos + 6, string_hash_to_newline(dialogueOutput), 16, 175);
	
	// draw our avatar box
	if(dialogueAvatar != ""){
		if (dialogueLeftFacing){
			draw_sprite(PortraitBox, 1, xPos - 61, yPos);
			draw_sprite(dialogueAvatar, 0, xPos - 56, yPos + 4);
		} else {
			draw_sprite(PortraitBox, 0, xPos + 186, yPos);
			draw_sprite_ext(dialogueAvatar, 0, xPos + 248, yPos + 4, -1, 1, 0, c_white, 1);
		}
	
	}

}