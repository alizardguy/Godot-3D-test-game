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
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED);

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(deg2rad(-event.relative.x * mouse_sensitivity));
		head.rotate_x(deg2rad(-event.relative.y * mouse_sensitivity));
		head.rotation.x = clamp(head.rotation.x, deg2rad(-89), deg2rad(89));

func _process(delta):
	direction = Vector3();
# tab out
	if Input.is_action_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE);
# movement
	if Input.is_action_just_pressed("move_jump") && is_on_floor():
		fall.y = jump;
	if Input.is_action_pressed("move_forward"):
		direction -= transform.basis.z;
	elif Input.is_action_pressed("move_backward"):
		direction += transform.basis.z;
	if Input.is_action_pressed("move_left"):
		direction -= transform.basis.x;
	elif Input.is_action_pressed("move_right"):
		direction += transform.basis.x;
# apply direction
	direction = direction.normalized();
	velocity = velocity.linear_interpolate(direction * speed, acceleration * delta);
	velocity = move_and_slide(velocity, Vector3.UP);
	move_and_slide(fall, Vector3.UP);

func _physics_process(delta):
	if not is_on_floor():
		fall.y -= gravity * delta;
