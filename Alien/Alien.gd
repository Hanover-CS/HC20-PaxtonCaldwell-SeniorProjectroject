# Class: Alien
# Author: Paxton Caldwell
# Description: Class implementing alien functionality and AI


extends KinematicBody2D

const GRAVITY = 20
const SPEED = 30
const FLOOR = Vector2(0, -1)

var velocity = Vector2()
var direction = 1

func _physics_process(delta):
	gravity()
	move_alien()
	sprite_faces_direction()
	detect_ledge()
	detect_wall()
	
func detect_wall():
	if is_on_wall():
		flip_alien_sprite()
		
func detect_ledge():
	if $RayCast2D.is_colliding() == false:
		flip_alien_sprite()

func flip_alien_sprite():
	direction = direction * -1
	$RayCast2D.position.x *= -1	
	
func sprite_faces_direction():
	if direction == 1:
		$AnimatedSprite.flip_h = false
	else:
		$AnimatedSprite.flip_h = true

func gravity():
	velocity.y += GRAVITY
	
func move_alien():
	velocity.x = SPEED * direction
	velocity = move_and_slide(velocity, FLOOR)
	$AnimatedSprite.play("WalkA")