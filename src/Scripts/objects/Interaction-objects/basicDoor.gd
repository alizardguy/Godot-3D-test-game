extends Spatial

var isOpen:bool = false;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func player_interact():
	var tween = get_node("door pivot/Tween");
	var current = $"door pivot".rotation_degrees
	if isOpen == false:
		tween.interpolate_property($"door pivot", "rotation_degrees", current, Vector3(0,90,0), 0.1, Tween.TRANS_LINEAR, Tween.TRANS_LINEAR);
		isOpen = true;
	else:
		tween.interpolate_property($"door pivot", "rotation_degrees", current, Vector3(0,0,0), 0.1, Tween.TRANS_LINEAR, Tween.TRANS_LINEAR);
		isOpen = false;
	tween.start();
	pass
