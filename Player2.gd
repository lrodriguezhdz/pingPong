extends KinematicBody2D

var speed = 60

onready var ball=get_parent().find_node("Ball2")

func _physics_process(delta):
#	if ball.position.y >90:
		var direction= Vector2(_get_direction(),0)
		move_and_slide(direction*speed)
		
func _get_direction():
	if abs(ball.position.y-position.y)	>10:
		if ball.position.x-position.x:
			return -.8
		else:
			return .8
	else:
		return 0		
