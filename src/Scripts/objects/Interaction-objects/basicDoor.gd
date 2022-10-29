extends Spatial

# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_node("/root/Root/Avatar/head/InteractRaycast"));
	get_node("/root/Root/Avatar/head/InteractRaycast").connect("player_interact_Impulse", self, "_on_player_interact_Impulse");
	pass # Replace with function body.

func _on_player_interact_Impulse():
	print("lol");
	pass
