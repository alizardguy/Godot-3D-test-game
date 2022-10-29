extends Spatial

# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_node("/root/Root/Avatar/head/InteractRaycast"));
	pass # Replace with function body.

func _on_player_interact_Impulse():
	print("lol");
	pass
