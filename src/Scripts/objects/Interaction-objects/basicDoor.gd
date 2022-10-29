extends Spatial

# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_node("/root/Root/Avatar/head/InteractRaycast"));
	pass # Replace with function body.

func player_interact():
	print("a player interacted with me");
	pass
