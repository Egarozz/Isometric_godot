extends Camera2D

var move = Vector2.ZERO
func _ready():
	pass # Replace with function body.

func _process(delta):
	if Input.is_key_pressed(KEY_A):
		move.x = -1
	elif Input.is_key_pressed(KEY_D):
		move.x = 1
	else: move.x = 0
	if Input.is_key_pressed(KEY_W):
		move.y = -1
	elif Input.is_key_pressed(KEY_S):
		move.y = 1
	else: move.y = 0
	
	
	offset += move
