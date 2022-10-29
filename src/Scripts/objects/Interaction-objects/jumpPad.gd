extends Spatial

var BoostDirection = 9;
var BoostDirectionRaw = Vector3(0,9,0);

# Called when the node enters the scene tree for the first time.
func _ready():
	BoostDirectionRaw = global_transform.basis.y;
	print(BoostDirection) # fix later
	pass

func _physics_process(_delta):
	pass

func _on_Area_body_entered(body):
	if body.is_in_group("Player"):
		body.jumpPadBoost(BoostDirection);
