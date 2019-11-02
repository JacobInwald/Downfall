/// @description This function turns a direction passed in into the opposite direction
/// @param direction
var inputDirection = argument[0];
if(inputDirection = DOWN)
	return UP;
else if(inputDirection = UP)
	return DOWN;
else if(inputDirection = LEFT)
	return RIGHT;
else if(inputDirection = RIGHT)
	return LEFT;
else
	return DOWN;

	