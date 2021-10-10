extends Area2D

signal mouse_eaten


func _on_mouse_area_entered(area):
	if(area.name == "head"):
		queue_free()
		emit_signal("mouse_eaten")
