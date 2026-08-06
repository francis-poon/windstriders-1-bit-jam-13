extends Camera2D

@export var move_speed: float = 300

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var y_axis: float = Input.get_axis("ui_up", "ui_down")
	var x_axis: float = Input.get_axis("ui_left", "ui_right")

	position += Vector2(x_axis, y_axis) * move_speed * delta
