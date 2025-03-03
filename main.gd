extends Control

@export var winner_label: Label
@export var winning_id: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	winning_id = randi_range(1, 3)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	winner_label.text = "NAJLEPSZE LO"


func _on_element_chosen(id) -> void:
	if id == winning_id:
		winner_label.text = "Wybrano element %d" % id
