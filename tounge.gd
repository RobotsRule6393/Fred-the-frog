extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$".".scale = Vector2(0,0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("click"):
		look_at(get_global_mouse_position())
		$".".scale = Vector2(-(global_position.distance_to(get_global_mouse_position())*2.5),20)
		print($".".scale)
	if Input.is_action_just_released("click"):
		$".".scale = Vector2(0,0)
