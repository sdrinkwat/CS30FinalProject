


if(global.speedMultiplier > 1)
{
	global.counter1 += 1;
	
	if (global.counter1 >= 350) {
		global.speedMultiplier = 1;
		global.counter1 = 0;
	}
}