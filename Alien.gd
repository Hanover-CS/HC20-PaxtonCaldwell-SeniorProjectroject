extends KinematicBody2D

const GRAVITY = 20
const SPEED = 30
const FLOOR = Vector2(0, -1)

var velocity = Vector2()

func _physics_process(delta):
	velocity.x = SPEED
	$AnimatedSprite.play("WalkA")
	velocity.y += GRAVITY
	velocity = move_and_slide(velocity, FLOOR)

