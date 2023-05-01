extends Button

@onready var sndBruh = get_node("%snd_sound")

func _on_pressed():
	sndBruh.play()


func _on_stop_sounds_stop_sound():
	sndBruh.stop()
