extends RayCast

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(_delta):
# interact
	if Input.is_action_just_pressed("player_interact"):
		print(get_collider());
