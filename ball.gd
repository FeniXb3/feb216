extends RigidBody2D

@export var bounce_multiplier: float = 2

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("start_ball"):
		apply_impulse(Vector2(0, -1000))

func _physics_process(delta: float) -> void:
	print(linear_velocity)

func _on_body_entered(body: Node) -> void:
	print(body.collision_layer)
	if body.collision_layer & 16:
		print(linear_velocity, linear_velocity.length())
		linear_velocity = linear_velocity.normalized() * bounce_multiplier
		print(linear_velocity, linear_velocity.length())
