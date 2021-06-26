extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var out_msg = "Money: "
var value  = 0.0
var counter = 0
var fps = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	set_bbcode(out_msg + str(value));
	fps = ProjectSettings.get_setting("physics/common/physics_fps");



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	set_bbcode(out_msg + str(value));
	if get_parent().get_node("Health_status").health > 0:
		#passive income
		counter += 1;
		if(0 == (counter % fps)): value += 2;
