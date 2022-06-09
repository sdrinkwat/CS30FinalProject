/// @description Insert description here
// You can write your code in this editor


global.playerHealth += 1;

if (global.playerHealth >= global.playerHealthMax) {
	global.playerHealthMax += 1;
}

instance_destroy(id);
