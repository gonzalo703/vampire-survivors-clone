extends CharacterBody2D

@export var movenment_speed: float = 20.0
@onready var player = get_tree().get_first_node_in_group("player")

func _physics_process(_delta: float) -> void:
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * movenment_speed
	move_and_slide()
