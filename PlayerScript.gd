extends CharacterBody2D

@export var speed = 20000
var velocity_2 = Vector2()
var mouse_position = null

func _physics_process(_delta):
	print("moving")
	velocity_2 = Vector2(0, 0)
	mouse_position = get_global_mouse_position()
	
	if Input.is_action_pressed("forward"):
		print("moving")
		var direction = (mouse_position - position).normalized()
		velocity_2 = (direction * speed)
		
	move_and_slide()
	look_at(mouse_position)
