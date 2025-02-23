extends CharacterBody2D


@onready var player = get_node("/root/Game/Player")

var mob_speed = 300.0


func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * mob_speed
	move_and_slide()
