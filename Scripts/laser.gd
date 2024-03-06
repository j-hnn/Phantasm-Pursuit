extends Node2D

@onready var sprite_2d = $Sprite2D

var laser_length = 0
var laser_range = 5

func _process(delta):
	look_at(get_global_mouse_position())

func _input(event):
	if event.is_action_pressed("click"):
		laser_length = laser_range
		update_beam()
	elif event.is_action_released("click"):
		laser_length = 0
		update_beam()

func update_beam():
	# Update the laser beam's length
	sprite_2d.scale.x = laser_length