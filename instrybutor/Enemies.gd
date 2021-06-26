extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var out_msg = "Enemies Remaining: "
export (float) var enemyCount = 10


# Called when the node enters the scene tree for the first time.
func _ready():
	set_bbcode(out_msg + str(enemyCount));



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if enemyCount > -1:
		set_bbcode(out_msg + str(enemyCount));
		if 0 == enemyCount:
			get_parent().get_node("AcceptDialog").window_title = "VICTORY"
			get_parent().get_node("AcceptDialog").show()
			enemyCount = -1
