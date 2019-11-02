if(!dialogueHappening){
	move(moveSpeed, xSpeed, ySpeed);

	if(ySpeed < 0)
		Direction = UP;
	if(ySpeed > 0)
		Direction = DOWN;	
	if(xSpeed > 0)
		Direction = RIGHT;
	if(xSpeed < 0)
		Direction = LEFT;
	sprite_index = View[Direction, Action];
} else {
	sprite_index = View[Direction, IDLE];
}

var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
layer_x("Backgrounds_1", _cam_x * 0.25);
layer_y("Backgrounds_1", _cam_y * 0.25);