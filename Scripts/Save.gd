extends Button


func _on_pressed():
	# Create ConfigFile object
	var config = ConfigFile.new()
	
	# Game Values
	config.set_value("Game", "Name", SettingsDb.game_settings.name)
	config.set_value("Game", "Difficulty", SettingsDb.game_settings.difficulty)
	config.set_value("Game", "Rumble", SettingsDb.game_settings.rumble)
	
	# Video Values
	
	config.set_value("Video", "Fullscreen", SettingsDb.video_settings.fullscreen)
	config.set_value("Video", "Vsync", SettingsDb.video_settings.vsync)
	config.set_value("Video", "Resolution", SettingsDb.video_settings.resolution)
	
	# Audio Values
	config.set_value("Audio", "Master", SettingsDb.audio_settings.master)
	config.set_value("Audio", "Music", SettingsDb.audio_settings.music)
	config.set_value("Audio", "Sound", SettingsDb.audio_settings.sound)
	
	# Save the new config
	config.save("user://settings.cfg")
	print("Saved Config")

