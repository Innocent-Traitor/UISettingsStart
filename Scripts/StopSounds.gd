extends Button

signal stopSound


func _on_pressed():
	emit_signal("stopSound")
