/// @description This script checks whether the player is touching the calling instance and is pressing 'z'
/// @param dialogueLine
if(!instance_exists(Player) and !instance_exists(DialogueController)){
	return;
}

var directionToFace = DOWN;


if(Player.bbox_right < self.bbox_right)
	directionToFace = LEFT;
else if(Player.bbox_left > self.bbox_right)
	directionToFace = RIGHT;
if(Player.bbox_bottom < self.bbox_top)
	directionToFace = UP;
else if(Player.bbox_top > self.bbox_bottom)
	directionToFace = DOWN;

// Those if statements change the direction for the NPC to face base on the position of
// the players collision bounds in reltaion to its ones.

if( Player.Direction = oppositeDirection(directionToFace) and
	collision_rectangle(self.bbox_left - 1, self.bbox_top - 1,
	self.bbox_right + 1, self.bbox_bottom + 1, Player, true, true)
	and keyboard_check_pressed(ord("Z"))){
		
	self.Direction = directionToFace;
	startDialogue(self, argument[0]);
}