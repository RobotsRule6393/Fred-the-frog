extends Area2D

func _ready() -> void:
	$".".scale = Vector2(0,0)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("space"):
		look_at(get_global_mouse_position())
		$".".scale = Vector2(-(global_position.distance_to(get_global_mouse_position())*0.009),2)
		print($".".scale)
	if Input.is_action_just_released("space"):
		$".".scale = Vector2(0,0)
