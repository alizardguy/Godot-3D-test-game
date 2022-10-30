extends Spatial

var WorldData = null;

# Called when the node enters the scene tree for the first time.
func _ready():
	WorldData = get_node("/root/Root/World Data");

func _on_TriggerArea_body_entered(body):
	if body.is_in_group("Player"):
		if WorldData.greenSwitchClicked == false:
			WorldData.greenSwitchOn();
		else:
			WorldData.greenSwitchOff();
