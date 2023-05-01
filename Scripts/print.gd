
extends Button



func _on_pressed():
	print("Game: ", SettingsDb.game_settings)
	print("Video: ", SettingsDb.video_settings)
	print("Audio: ", SettingsDb.audio_settings)
