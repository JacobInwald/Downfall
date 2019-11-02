/// @description Insert description here
// You can write your code in this editor
moveSpeed = 3;
xSpeed = 0;
ySpeed = 0;

Direction = DOWN;
Action = IDLE;
View = [];

View[RIGHT, IDLE] = ViniusStandingRight;

View[UP, IDLE] = ViniusStandingUp;

View[LEFT, IDLE] = ViniusStandingLeft;

View[DOWN, IDLE] = ViniusStandingDown;



dialogueLine = 1;
dialogue = [];

introDialogue = 
addDialogue("Howdy...", true);
addDialogue("M' names Vinius, nice to meet here", false);