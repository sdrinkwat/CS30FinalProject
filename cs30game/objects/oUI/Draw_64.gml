/// @description Insert description here
// You can write your code in this editor

var _playerHealth = global.playerHealth;
var _playerHealthMax = global.playerHealthMax;
var _playerHealthFrac = frac(_playerHealth);
_playerHealth -=  _playerHealthFrac;

for (var i = 1; i < _playerHealthMax + 1; i++) {
	var _imageIndex = (i > _playerHealth);
	if (i == _playerHealth+1) {
		_imageIndex += (_playerHealthFrac > 0);
		_imageIndex += (_playerHealthFrac > 0.25);
		_imageIndex += (_playerHealthFrac > 0.5);
	}
	draw_sprite(sHealth,_imageIndex, 32 + ((i-1)*32), 50);
}

for (var i = 1; i < global.pointsMax + 1; i++) {
	var _imageIndex = (i > global.points);
	draw_sprite(sPoints,_imageIndex, 32 + ((i-1)*32), 100);
}

if (global.playerHealth <= 0) {
	game_restart();
}
