///@description The function that check if the object calling it will collisde and if not moves it.
///@param speed
///@param xSpeed
///@param ySpeed 
var moveSpeed = argument0;
var xSpeed = argument1;
var ySpeed = argument2;

var spd = moveSpeed * (xSpeed != 0 || ySpeed != 0);
var dir = point_direction(0, 0, xSpeed, ySpeed);

var xMove = lengthdir_x(spd,dir);
var yMove = lengthdir_y(spd,dir);

var xtarg = x + lengthdir_x(spd,dir);
var ytarg = y + lengthdir_y(spd,dir);
 
if place_free(xtarg,ytarg) {
    x = xtarg;
    y = ytarg;
	if(yMove != 0 || xMove != 0)
		Action = WALK;
	else
		Action = IDLE;
}
else {
    var sweep_interval = 5;
    for ( var angle = sweep_interval; angle <= 80; angle += sweep_interval) {
        for ( var multiplier = -1; multiplier <= 1; multiplier += 2) {      
            var angle_to_check = dir + angle*multiplier;
            xtarg = x + lengthdir_x(spd, angle_to_check);
            ytarg = y+ lengthdir_y(spd, angle_to_check); 
			Action = IDLE;
            if place_free(xtarg,ytarg) {
				if(yMove != 0 || xMove != 0)
					Action = WALK;
				else
					Action = IDLE;
                x = xtarg;
                y = ytarg;  
                exit;       
            }   
        }
    }
}