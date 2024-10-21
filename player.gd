extends Node3D

var score = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#func _on_left_sword_body_entered(body):
	#if body.is_in_group("Hit"):
		#body.is_hit()
		#score += 1
		#print(score)
	#if body.is_in_group("Solid"):
		#print("Hit")
		#$".".velocity = ($XROrigin3D.position - $XROrigin3D/left.position) * 100 + $".".velocity

#func _on_right_sword_body_entered(body):
	#if body.is_in_group("Hit"):
		#body.is_hit()
		#score += 1
		#print(score)
	#if body.is_in_group("Solid"):
		#print("Hit")
		#$".".velocity = ($XROrigin3D.position - $XROrigin3D/right.position) * 100 + $".".velocity
