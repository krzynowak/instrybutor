extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var out_msg = "Unit B count: "
var value  = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	set_bbcode(out_msg + str(value));



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	set_bbcode(out_msg + str(value));
