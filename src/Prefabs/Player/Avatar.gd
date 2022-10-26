extends KinematicBody

### vars
# player move vars
var speed = 7;
var acceleration = 20;
var gravity = 9.8;
var jump = 5;

# input setting vars
var mouse_sensitivity = 0.05;

# storage of vectors
var direction = Vector3();
var velocity = Vector3();
var fall = Vector3();

#refs
var head = null;

# Called when the node enters the scene tree for the first time.
func _ready():
	# link slots
	head = $head
	#hides the cursor
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(deg2rad(-event.relative.x * mouse_sensitivity))
		head.rotate_x(deg2rad(-event.relative.y * mouse_sensitivity))
		head.rotation.x = clamp(head.rotation.x, deg2rad(-89), deg2rad(89))
