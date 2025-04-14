extends Node2D
@export var restart_timer: Timer

func _on_killzone_body_entered(_body: Node2D) -> void:
	print("Game over")
	restart_timer.start()


func _on_restart_timer_timeout() -> void:
	get_tree().reload_current_scene.call_deferred()
