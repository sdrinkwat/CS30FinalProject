/// @description Insert description here
// You can write your code in this editor

// Find exit trigger
var _exit = instance_place(x, y, oExitTrigger);

// Enter room when trigger area is left
if (!enteredRoom && _exit == noone) {
	enteredRoom = true;
}

// Exit room
if (enteredRoom && _exit != noone) {
	room_goto(_exit.targetRoom);
	
	oRoomManager.targetInstance = _exit.targetInstance;
}
