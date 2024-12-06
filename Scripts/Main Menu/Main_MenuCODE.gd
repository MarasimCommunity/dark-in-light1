extends Node2D
func _on_play_pressed() -> void:
	PlayGame()

func _on_settings_pressed() -> void:
	Settings()

func _on_quit_pressed() -> void:
	QuitGame()
func PlayGame() :
	pass
func Settings() :
	pass
func QuitGame() :
	get_tree().quit()
