# Class: automatedTests
# Author: Paxton Caldwell
# Description: class implementing automated tests for the game 

extends "res://addons/gut/test.gd"

const TESTPLAYER = preload("res://Player/Player.gd")

var motion = Vector2()
const MAX_SPEED = 200
const ACCELERATION = 50

func before_each():
	gut.p("ran setup", 2)

func after_each():
	gut.p("ran teardown", 2)

func before_all():
	gut.p("ran run setup", 2)

func after_all():
	gut.p("ran run teardown", 2)

func test_player_movement_right():
	var testPlayer = TESTPLAYER.new()
	var right = Input.is_action_pressed("ui_right")
	while right:
		assert_eq(testPlayer.motion.x, min(testPlayer.motion.x + ACCELERATION, MAX_SPEED))
	
func test_player_movement_left():
	var testPlayer = TESTPLAYER.new()
	var left = Input.is_action_pressed("ui_left")
	while left:
		assert_eq(testPlayer.motion.x, min(testPlayer.motion.x - ACCELERATION, -MAX_SPEED))
	
func test_input_arrow_up():
	var up = Input.is_action_just_pressed("ui_up")
	assert_eq(up, Input.is_action_just_pressed("ui_up"))
	
func test_input_arrow_right():
	var right = Input.is_action_just_pressed("ui_right")
	assert_eq(right, Input.is_action_just_pressed("ui_right"))
	
func test_input_arrow_left():
	var left = Input.is_action_just_pressed("ui_left")
	assert_eq(left, Input.is_action_just_pressed("ui_left"))
	