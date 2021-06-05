extends Area2D
class_name Apple

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var velocity  := Vector2.ZERO
var speed     := 0.0
var max_range := 100.0
var distance  := 0.0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocity *speed * delta
	distance += speed * delta
	if distance >= max_range:
		queue_free()
