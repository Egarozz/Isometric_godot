extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var tilem = get_parent().get_node("TileMap")

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

func _process(delta):
	var pos = get_global_mouse_position()
	var tile = Vector2(floor(pos.y / 8 + pos.x / 16), floor(pos.y / 8 - pos.x / 16))
	var x = tile.x*Vector2(8,4)
	var y = tile.y*Vector2(-8,4)
	y.y += 1
	var newPos = x+y
	if tilem != null:
		if tilem.get_cell(tile.x,tile.y) == 1:
			visible = true
		else: visible = false
	
	
	position.x += (newPos.x - position.x)*0.4
	position.y += (newPos.y - position.y)*0.4
	
	
