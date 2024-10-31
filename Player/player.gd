extends CharacterBody2D

var movement_speed: float = 40.0

func _physics_process(delta: float) -> void:
	movement()
	
func movement():
	var x_move = Input.get_action_strength("right") - Input.get_action_strength("left")
	var y_move = Input.get_action_strength("down") - Input.get_action_strength("up")
	var move = Vector2(x_move, y_move)
	velocity = move.normalized() * movement_speed
	move_and_slide() 