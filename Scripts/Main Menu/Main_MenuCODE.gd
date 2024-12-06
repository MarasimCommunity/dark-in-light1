extends Node2D
var SettingsPressed = false
@onready var buttons_scene: Node2D = $"BUTTONS SCENE"
@onready var settings_scene: Node2D = $"SETTINGS SCENE"
func _physics_process(delta: float) -> void:
	if SettingsPressed == true :
		buttons_scene.hide()
		settings_scene.show()
	if SettingsPressed == false :
		buttons_scene.show()
		settings_scene.hide()
func _on_play_pressed() -> void:
	PlayGame()

func _on_settings_pressed() -> void:
	SettingsPress()
func _on_back_pressed() -> void:
	BackSettPress()
func _on_quit_pressed() -> void:
	QuitGame()
func PlayGame() :
	get_tree().change_scene_to_file("res://Scenes/Open World Lvl 1.tscn")
func SettingsPress() :
	SettingsPressed = true
func BackSettPress() :
	SettingsPressed = false
func QuitGame() :
	get_tree().quit()
