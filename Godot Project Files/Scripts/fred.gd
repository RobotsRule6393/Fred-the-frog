extends CharacterBody2D


const SPEED = 300.0


func _physics_process(delta: float) -> void:
	var direction: Vector2
	direction.x = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction.x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	direction.y = Input.get_axis("ui_up", "ui_down")
	if direction:
		velocity.y = direction.y * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	move_and_slide()
