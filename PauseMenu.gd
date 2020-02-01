# Class: PauseMenu
# Author: Paxton Caldwell
# Description: Class implementing fucntionality for the pause menu
# "ui_cancel" is built in command for the esc button

extends Control

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		$CenterContainer/VBoxContainer/resumeButton.grab_focus()
		_unpause_Processing()
		visible = not visible

func _on_resumeButton_pressed():
	_unpause_Processing()
	visible = not visible

func _on_quitButton_pressed():
	_unpause_Processing()
	get_tree().change_scene("res://StartMenu.tscn")
	
func _unpause_Processing(): 
	get_tree().paused = not get_tree().paused