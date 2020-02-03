# Class: AlienHitBox
# Author: Paxton Caldwell
# Description: Class implenting functionality for when the player touches an enemy alien

extends Area2D

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			get_tree().reload_current_scene()