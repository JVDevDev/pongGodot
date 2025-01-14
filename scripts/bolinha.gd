extends CharacterBody2D

var speed = 450
var increased_speed = 50

func decidir_left_right():
	var x = randi_range(1, 2)
	if x % 2 == 0:
		x = 1
	else: 
		x = -1
	return x

func decidir_y():
	var y = randi_range(1, 2)
	if y % 2 == 0:
		y = 1
	else:
		y = -1
	return y

func _ready():
	velocity = Vector2(decidir_left_right(), decidir_y()).normalized() * speed
	

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		if collision.get_collider().name == "StaticBody2D":
			speed +=increased_speed
			velocity = velocity.normalized() * speed
