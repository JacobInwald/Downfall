/// @description StartDialogue
/// @ param object
/// @ param dialogueLine

// create the dialogue controller

if(!instance_exists(DialogueController)) {
	instance_create_depth(0, 0, 0, DialogueController);
	DialogueController.dialogueLines = argument[0].dialogue;
	DialogueController.dialogueLine = argument[1];
	DialogueController.fetch = true;
}

if(instance_exists(Player)){
	Player.dialogueHappening = true;
}

