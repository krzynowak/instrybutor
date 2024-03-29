extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var out_msg = "Heatlh: "
export (float) var health = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	set_bbcode(out_msg + str(health));


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if health > -1:
		set_bbcode(out_msg + str(health));
		if 0 == health:
			get_parent().get_node("AcceptDialog").window_title = "GAME OVER"
			get_parent().get_node("AcceptDialog").show()
			health = -1
