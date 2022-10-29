extends RayCast

signal player_interact_Impulse;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(_delta):
# interactw
	if Input.is_action_just_pressed("player_interact"):
		var hitObject = get_collider();
		if hitObject != null:
			hitObject = hitObject.get_owner();
			print(hitObject);
			emit_signal("player_interact_Impulse");
			pass
