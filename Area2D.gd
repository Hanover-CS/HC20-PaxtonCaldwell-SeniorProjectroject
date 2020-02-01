# Class: EndPoint
# Author: Paxton Caldwell
# Description: Class implementing functionality for end point of each level

extends Area2D

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			get_tree().change_scene("res://LevelSelectMenu.tscn")