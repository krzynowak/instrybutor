extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var out_msg = "Heatlh: "
var value = 100


# Called when the node enters the scene tree for the first time.
func _ready():
	set_bbcode(out_msg + str(value));
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_bbcode(out_msg + str(value));
	pass
