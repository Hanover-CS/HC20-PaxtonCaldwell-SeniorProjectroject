#LevelSelectMenu.gd
extends Control

func _on_Level1Button_pressed():
	get_tree().change_scene("res://World.tscn")

func _on_Level2Button_pressed():
	get_tree().change_scene("res://World2.tscn")

func _on_BackButton_pressed():
	get_tree().change_scene("res://StartMenu.tscn")
