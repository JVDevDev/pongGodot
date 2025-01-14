extends CharacterBody2D

const SPEED = 16

func _physics_process(delta):
	var direction = Input.get_axis("cima", "baixo")
	if direction:
		velocity.y = (direction * SPEED) / delta
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED * 10)
	move_and_slide()
