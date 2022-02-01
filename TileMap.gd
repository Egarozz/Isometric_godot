extends TileMap

onready var astar_node = AStar.new()
var path_start_position = Vector2() setget _set_path_start_position
var path_end_position = Vector2() setget _set_path_end_position
var obstacles
# Called when the node enters the scene tree for the first time.
func _ready():
	obstacles = get_used_cells_by_id(2)
	
func _input(event):
	if event.is_action_pressed("click"):
		print("Hola") 
		
		
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == BUTTON_LEFT:
			var a = get_global_mouse_position()
			var tile = Vector2(floor(a.y / 8 + a.x / 16), floor(a.y / 8 - a.x / 16))
			print(get_cell(tile.x,tile.y))

func _set_path_start_position(a):
	pass
func _set_path_end_position(a):
	pass
