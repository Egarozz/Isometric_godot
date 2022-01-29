extends TileMap



# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(0,20):
		var fila = ""
		for j in range(0,20):
			var cell = get_cell(j,i)
			if cell == -1: cell = 0
			fila += String(cell) + " "
			
		print(fila)	
	
func _draw():
	draw_rect(Rect2(30,30,20,20),Color.red,true)
	
func _input(event):
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == BUTTON_LEFT:
			var a = event.get_position()
			print(cell(a))
func cell(vector):
	var x = floor(vector.x/16)+16
	var y = floor(vector.y/8)
	return Vector2(x,y)
