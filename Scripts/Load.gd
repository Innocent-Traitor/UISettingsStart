extends Button

signal configLoad

func _on_pressed():
	var config = ConfigFile.new()
	
	# Load file from disk
	var err = config.load("user://settings.cfg")
	
	# If the file didn't load, ignore it
	if err != OK:
		return
	
	SettingsDb.game_settings.name = config.get_value("Game", "Name")
	SettingsDb.game_settings.difficulty = config.get_value("Game", "Difficulty")
	SettingsDb.game_settings.rumble = config.get_value("Game", "Rumble")
	
	SettingsDb.video_settings.fullscreen = config.get_value("Video", "Fullscreen")
	SettingsDb.video_settings.vsync = config.get_value("Video", "Vsync")
	SettingsDb.video_settings.resolution = config.get_value("Video", "Resolution")
	
	SettingsDb.audio_settings.master = config.get_value("Audio", "Master")
	SettingsDb.audio_settings.music = config.get_value("Audio", "Music")
	SettingsDb.audio_settings.sound = config.get_value("Audio", "Sound")
	
	print("Loaded Config")
	emit_signal("configLoad")
