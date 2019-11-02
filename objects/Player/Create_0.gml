 /// @description Insert description here
// Constructor

xSpeed = 0;
ySpeed = 0;

moveSpeed = 2;

Direction = DOWN;
Action = IDLE;

View[RIGHT, IDLE] = ArthurStandingRight;

View[UP, IDLE] = ArthurStandingBack;

View[LEFT, IDLE] = ArthurStandingLeft;

View[DOWN, IDLE] = ArthurStandingForward;

View[RIGHT, WALK] = ArthurWalkingRight;

View[UP, WALK] = ArthurWalkingUp;

View[LEFT, WALK] = ArthurWalkingLeft;

View[DOWN, WALK] = ArthurWalkingDown;


dialogueHappening = false;
dialogue = [];
dialogueLine = 0;

introDialogue = 
addDialogue("Hey Arthur! You gotta come quick, there's an outbreak at the hospital!", true, ArthurStandingBack);
addDialogue("Me an' the other doctors are going crazy'", false, ArthurStandingBack);

secondDialogue = 
addDialogue("Oi Oi where you goin', that place ain't allowed for you", false);




       