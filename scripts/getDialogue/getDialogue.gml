/// @description Get dialogue pieces from object.
/// @param startLine

if(fetch){
	
	dialogueOutput = "";
	dialogueOutputSpeed = 0;
	var dialogueData = dialogueLines[dialogueLine];

	dialogueText = dialogueData[0];
	dialogueContinue = dialogueData[1];	
	dialogueAvatar = dialogueData[2];		
	dialogueLeftFacing = dialogueData[3];
	dialogueAtTop = dialogueData[4];
	dialogueSpeaker = dialogueData[5];
	
	fetch = false; // prevents from running repeatedly
	
} else {
	
	if(argument[0]){
		if(string_length(dialogueText) > string_length(dialogueOutput)){
			dialogueOutputSpeed = 1000;
		} else {
			if(dialogueContinue){
				dialogueLine ++;
				fetch = true;
			} else {
				if(instance_exists(Player)){
					Player.dialogueHappening = false;
					dialogueSpeaker.Direction = DOWN;
				}
				instance_destroy();
			}
		}
	}
	
	dialogueOutput = string_copy(dialogueText, 1, dialogueOutputSpeed);
	dialogueOutputSpeed += 0.5;

}
