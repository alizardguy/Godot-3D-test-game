extends Spatial

var isOpen:bool = false;
var WorldData = null;

# Called when the node enters the scene tree for the first time.
func _ready():
	WorldData = get_node("/root/Root/World Data");

func player_interact():
	if WorldData.greenSwitchClicked == true:
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
