extends KinematicBody2D

const GRAVITY = 20
const MAX_SPEED = 200
const ACCELERATION = 50
const JUMP_HEIGHT = -550
const UP = Vector2(0,-1)
const FALLING_OFF_MAP = 3000

var motion = Vector2()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	motion.y += GRAVITY
	move_character()
	on_floor_ready_to_jump()
	is_falling_off_map()
	motion = move_and_slide(motion, UP)
	pass
	
func move_player_right():
	motion.x = min(motion.x+ACCELERATION, MAX_SPEED)
	$Sprite.flip_h = false
	$Sprite.play("Run")

func move_player_left():
	motion.x = max(motion.x-ACCELERATION, -MAX_SPEED)
	$Sprite.flip_h = true
	$Sprite.play("Run")
	
func stop_player_movement():
	$Sprite.play("Idle")
	motion.x = 0

func is_falling_off_map():
	if motion.y > FALLING_OFF_MAP:
		respond()
		
func respond():
	get_tree().reload_current_scene()
		
func on_floor_ready_to_jump():
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
	else:
		$Sprite.play("Jump")

func move_character():
	if Input.is_action_pressed("ui_right"):
		move_player_right()
	elif Input.is_action_pressed("ui_left"):
		move_player_left()
	else:
		stop_player_movement()