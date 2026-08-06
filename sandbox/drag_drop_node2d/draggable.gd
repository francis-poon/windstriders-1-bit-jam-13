class_name SB_DraggableBox
extends ColorRect


func _get_drag_data(at_position: Vector2) -> Variant:
	set_drag_preview(self.duplicate())
	return self
