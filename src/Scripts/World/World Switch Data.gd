extends Spatial

var greenSwitchClicked = false;

func _ready():
	pass # Replace with function body.

# green switch
func greenSwitchOn():
	print("green: on");
	greenSwitchClicked = true;

func greenSwitchOff():
	print("green: off");
	greenSwitchClicked = false;
