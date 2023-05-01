extends Button

@onready var sndMusic = get_node("%snd_music")

func _on_pressed():
	sndMusic.play()


func _on_stop_sounds_stop_sound():
	sndMusic.stop()
