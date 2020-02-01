# Class: NextLevelPortal
# Author: Paxton Caldwell
# Description: Class implementing functionality for transitioning to the next level

extends Area2D

export(String, FILE, "*.tscn") var scene

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			get_tree().change_scene(scene)

