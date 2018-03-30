
//Assigning movement into variables
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var jump = keyboard_check_pressed(vk_space);

//subtracting these key presses gets movement
//coded like this so that if both keys are pressed
//itl stop the charector and the number will equal 0
var move = right - left;

//horizontal speed will now equal
//the move number times the walking speed
//HSP will get final result

hsp = move * walksp;	//MOVE TIMES WALK SPEED

//GRAVITY
vsp+=grv;

//Horizontal Collision Code
//place_meeting checks for collision
if(place_meeting(x+hsp,y,obj_wall)){
	
	while(!place_meeting(x+sign(hsp),y,obj_wall)) {
		x = x + sign(hsp);
	}
	//stops the speed
	hsp = 0;
}

//x is a built in property that allows me to change the object
//x is a horizontal coordinate
//y is our vertical coordinate that is also a built in variable
//assigning the speeds to x plus equals
//shorthand for x = x + hsp
x+=hsp;		//X is a built in variable

//Vertical Collision Code
//place_meeting checks for collision
if(place_meeting(x,y+vsp,obj_wall)){
	
	while(!place_meeting(x,y + sign(vsp),obj_wall)) {
		x = x + sign(vsp);
	}
	//stops the speed
	vsp = 0;
}

//x is a built in property that allows me to change the object
//x is a horizontal coordinate
//y is our vertical coordinate that is also a built in variable
//assigning the speeds to y plus equals
//shorthand for y = y + hsp
y+=vsp;		//y is a built in variable