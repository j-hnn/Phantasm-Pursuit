extends CharacterBody2D


@export var speed = 300

var dir : Vector2

func _physics_process(_delta):
	velocity = dir * speed
	move_and_slide()
	
	if Input.is_action_pressed("click"):
		fire_laser()

func _process(delta):
	look_at(get_global_mouse_position())
	dir.x = Input.get_axis("ui_left", "ui_right")
	dir.y = Input.get_axis("ui_up", "ui_down")
	dir = dir.normalized()

func fire_laser():
	var laser = load("res://ScenesAndNodes/laser.tscn").instantiate()
	laser.global_position = Vector2(self.global_position.x, self.global_position.y)
	laser.rotation = self.rotation
	get_parent().add_child(laser)
	
	await get_tree().create_timer(1).timeout
