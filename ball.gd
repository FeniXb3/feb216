extends RigidBody2D

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("start_ball"):
		apply_impulse(Vector2(0, -1000))
