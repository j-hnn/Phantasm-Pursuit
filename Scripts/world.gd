extends Node2D

func _input(event):
	if event is InputEventMouseButton:
		var tween = create_tween()
		tween.tween_property(self, "position", event.position, 1)
