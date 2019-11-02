//Adds lines of dialogue to the dialogue array
/// @param Dialog
/// @param Continue 
/// @param Avatar
/// @param LeftFacing
/// @param Top

// capture input from the user and set to default if there is none
var dialoguePart = [];
var dialogueText = "";			if(argument_count >= 1) dialogueText = argument[0];
var dialogueContinue = false;	if(argument_count >= 2) dialogueContinue = argument[1];
var dialogueAvatar = "";		if(argument_count >= 3) dialogueAvatar = argument[2];
var dialogueLeftFacing = true;	if(argument_count >= 4) dialogueLeftFacing = argument[3];
var dialogueAtTop = false; if(argument_count >= 5) dialogueAtTop = argument[4];
var speaker = self;

dialoguePart[0] = dialogueText; // Sets text to the default
dialoguePart[1] = dialogueContinue; // Sets it continuing to false
dialoguePart[2] = dialogueAvatar; // sets the avatar that it displays
dialoguePart[3] = dialogueLeftFacing; // sets side of screen avatar will be shown on
dialoguePart[4] = dialogueAtTop; // sets position of the dialogue on the screen
dialoguePart[5] = speaker; // sets the object speaking.


// save the dialogue to the dialogue variable.
dialogue[dialogueLine] = dialoguePart;
dialogueLine++;

return dialogueLine - 1;