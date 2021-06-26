extends Path2D
var operational := true

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func disable():
	operational = false
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func addTrain():
	var train = preload("res://Train.tscn").instance()
	add_child(train)

func _on_Timer_timeout():
	var train = preload("res://Train.tscn").instance()
	add_child(train)
