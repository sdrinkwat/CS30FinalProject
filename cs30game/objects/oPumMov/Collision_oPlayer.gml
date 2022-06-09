/// @description Insert description here
// You can write your code in this editor


// if not charged 
if (global.playerState != "charge") {
	global.playerHealth -= 1;
}


instance_destroy(id);
