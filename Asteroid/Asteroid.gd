extends KinematicBody2D

export var move_speed = 2
export var limit = 400

func _ready():
	pass 

func _physics_process(_delta):
	var target = get_node("/root/Game/player").position
	var velocity = Vector2(target.x - position.x, target.y - position.y)
	if velocity.length() < limit:
		if velocity.length() > move_speed:
			position += velocity.normalized()*move_speed
		else:
			position += velocity


func _on_Area2D_body_entered(body):
	if body.name == "player":
		body.queue_free()
	

