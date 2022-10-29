extends RayCast;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(_delta):
# interactw
	if Input.is_action_just_pressed("player_interact") and is_colliding():
		var hitObject = get_collider();
		if hitObject != null:
			hitObject = hitObject.get_owner();
			#interact
			if hitObject.has_method("player_interact"):
				hitObject.player_interact();
				pass
