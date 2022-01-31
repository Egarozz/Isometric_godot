extends TileMap



# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _input(event):
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == BUTTON_LEFT:
			var a = get_global_mouse_position()
			var tile = Vector2(floor(a.y / 8 + a.x / 16), floor(a.y / 8 - a.x / 16))
			print(get_cell(tile.x,tile.y))
