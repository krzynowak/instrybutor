extends Area2D
class_name AppleTree

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var bullet = load("res://Apple.tscn")
var shoot = true
var target
var delay := 0.3
var timer := 0.0


# Called when the node enters the scene tree for the first time.
func _ready():
#	print("pif paf_ready")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print("pif paf_process")
	timer += delta
	
	if is_instance_valid(target):
		if timer >= delay:
			shoot = true
			timer = 0.0
		if shoot:
			_shoot_to_enemy((target.global_position- global_position).normalized())
			shoot = false

func _shoot_to_enemy(position):
	var new_bullet = bullet.instance() as Apple
	new_bullet.speed = 40
	new_bullet.velocity = position
	add_child(new_bullet)
	

func _on_AppleTree_area_entered(area):
	print(area.get_name())
	#if not ( area is Apple or area is AppleTree):
	if not("Apple" in area.get_name()):
		target = area
		shoot = true
