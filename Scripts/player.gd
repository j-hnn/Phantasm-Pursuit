extends CharacterBody2D


@export var speed = 300.0


func _physics_process(delta):
	var move_input = Input.get_axis("ui_down", "ui_up")
	var rotation_direction = Input.get_axis("ui_left", "ui_right")

	velocity = transform.x * move_input * speed
	rotation += rotation_direction * delta * 2.5
	move_and_slide()
	
