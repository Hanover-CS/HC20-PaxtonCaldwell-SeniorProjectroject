#LevelSelectMenu.gd
extends Control

func _on_Level1Button_pressed():
	get_tree().change_scene("res://World.tscn")
