extends Node2D
@export var restart_timer: Timer
@export var left_paddle: RigidBody2D
@export var right_paddle: RigidBody2D

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_left"):
		left_paddle.apply_impulse(Vector2(0, -600))
		
	if event.is_action_pressed("ui_right"):
		right_paddle.apply_torque_impulse(5000)

func _on_killzone_body_entered(_body: Node2D) -> void:
	print("Game over")
	restart_timer.start()


func _on_restart_timer_timeout() -> void:
	get_tree().reload_current_scene.call_deferred()
