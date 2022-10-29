extends RayCast

signal player_interact;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(_delta):
# interactw
	if Input.is_action_just_pressed("player_interact"):
		var hitObject = get_collider();
		if hitObject != null:
			print(hitObject.get_owner());
			emit_signal("player_interact", hitObject);
			pass
