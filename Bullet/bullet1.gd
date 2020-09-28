extends KinematicBody2D

export var speed = 12

func _ready():
	pass

func _physics_process(_delta):
	position.y -= speed
	
	if global_position.y < -100:
		queue_free()
