extends MeshInstance3D

@onready var _controller := XRHelpers.get_xr_controller(self)

@export var aim : String = "grip_click"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if _controller.is_button_pressed(aim):
		$".".visible = true
	else:
		$".".visible = false
