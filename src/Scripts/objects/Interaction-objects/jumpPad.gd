extends Spatial

var BoostDirection = Vector3(0,9,0);

# Called when the node enters the scene tree for the first time.
func _ready():
	BoostDirection = global_transform.basis.y * 9;
	pass

func _on_Area_body_entered(body):
	if body.is_in_group("Player"):
		body.jumpPadBoost(BoostDirection);
