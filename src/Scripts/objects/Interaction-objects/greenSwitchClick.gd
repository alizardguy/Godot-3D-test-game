extends Spatial

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_TriggerArea_body_entered(body):
	if body.is_in_group("Player"):
		Global.greenSwitchState =! Global.greenSwitchState;
		print(Global.greenSwitchState);
