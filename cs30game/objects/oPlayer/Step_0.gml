
//Get inputs (1 = pressed, 0 = not pressed)
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_jump = keyboard_check(vk_space);

//Work out where to move horizontally
hsp = (key_right - key_left) * hsp_walk * global.speedMultiplier;

//Work out where to move vertically
vsp = vsp + grv;

//Work out if we should jump
if (place_meeting(x,y+1,oWall)) and (key_jump)
{
    vsp = vsp_jump; 
}



//Check for horizontal collisions and then move if we can
var onepixel = sign(hsp) //moving left or right? right = 1, left = -1.
if (place_meeting(x+hsp,y,oWall))
{
    //move as close as we can
    while (!place_meeting(x+onepixel,y,oWall))
    {
        x = x + onepixel;
    }
    hsp = 0;
}
// Moving platform collison ---------

//Check for horizontal collisions and then move if we can
if (place_meeting(x+hsp,y,oPlatformMovX))
{
	if (oPlatformMovX.speed == 0.5) {
		if (hsp == 0) { // if char speed zero use the speed of platform only
			hsp = 2*oPlatformMovX.speed;
		} else if (vsp < 0) { // if char speed less than zero use the speed of platform only
			hsp = 2*oPlatformMovX.speed;
		} else { // if char speed greater than zero use the char's speed times the speed of platform
			hsp *= oPlatformMovX.speed;
		}
	} else {
		if (hsp <= 0) { // if char speed zero use the speed of platform only
			hsp = 2*oPlatformMovX.speed;
		} else { // if char speed greater than zero use the char's speed times the speed of platform
			hsp += oPlatformMovX.speed;
		}
	}
	
	
}
x = x + hsp;

//Check for vertical collisions and then move if we can
var onepixel = sign(vsp) //up = -1, down = 1.
if (place_meeting(x,y+vsp,oWall))
{
    //move as close as we can
    while (!place_meeting(x,y+onepixel,oWall))
    {
        y = y + onepixel;
    }
    vsp = 0;
}
if (place_meeting(x,y+vsp,oPlatformMovX))
{
    //move as close as we can
    while (!place_meeting(x,y+onepixel,oPlatformMovX))
    {
        y = y + onepixel;
    }
    vsp = 0;
	if (key_jump) {
		vsp = vsp_jump;
	}
}

y = y + vsp;








