extends Area2D
class_name AppleTree

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var bullet = load("res://Apple.tscn")
var shoot = true


# Called when the node enters the scene tree for the first time.
func _ready():
	print("pif paf_ready")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print("pif paf_process")
	if shoot:
		shoot = false
		var new_bullet = bullet.instance() as Apple
		new_bullet.speed = 10
		new_bullet.velocity = Vector2(1, 1).normalized()
		add_child(new_bullet)
