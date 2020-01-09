#StartMenu.gd
extends Control

func _on_StartGameButton_pressed():
	get_tree().change_scene("res://LevelSelectMenu.tscn")

func _on_QuitGameButton_pressed():
	get_tree().quit()
