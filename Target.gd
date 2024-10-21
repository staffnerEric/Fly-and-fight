extends StaticBody3D

var health = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if health == 0:
		queue_free()

func is_hit():
	$Target/MeshInstance3D.visible = true
	health -= 1
	$Timer.start()


func _on_timer_timeout():
	$Target/MeshInstance3D.visible = false
	$Timer.stop()
