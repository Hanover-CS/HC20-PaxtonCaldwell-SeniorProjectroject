# Class: StartMenu
# Author: Paxton Caldwell
# Description: Class implementing functionality for start menu

extends Control

func _on_StartGameButton_pressed():
	get_tree().change_scene("res://Menus/LevelSelection/LevelSelectMenu.tscn")

func _on_QuitGameButton_pressed():
	get_tree().quit()
