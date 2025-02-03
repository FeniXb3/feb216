extends Control

@export var winner_label: Label
@export var image: TextureRect
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	image.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	winner_label.text = "NAJLEPSZE LO"
	image.visible = true
