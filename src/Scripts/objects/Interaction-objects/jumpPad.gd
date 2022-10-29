extends Spatial

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _physics_process(_delta):
	pass

func _on_Area_body_entered(body):
	if body.is_in_group("Player"):
		body.jumpPadBoost();
