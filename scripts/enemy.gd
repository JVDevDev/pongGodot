extends CharacterBody2D

const SPEED = 16
@onready var bolinha = $"../bolinha"
var y = 0

func _physics_process(delta):
	var is_moving = bolinha_position()
	if is_moving:
		velocity.y = (y * SPEED) / delta
	else:
		velocity.y = 0
	move_and_slide()

func bolinha_position():
	var move = false
	if bolinha.position.y > (position.y + SPEED):
		move = true
		y = 1
	elif bolinha.position.y < (position.y - SPEED):
		move = true
		y = -1
	else:
		move = false
	return move
