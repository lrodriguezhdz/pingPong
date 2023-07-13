extends KinematicBody2D

var speed = 45
onready var ball = get_parent().find_node("Ball")

func _physics_process(delta):
	var direction= Vector2(_get_direction(),0)
	print(direction)
	move_and_slide(direction*speed)

		
func _get_direction():
	print(ball.position.y)
	print(position.y)
	if abs(ball.position.y-position.y)	>50:
		if ball.position.y>position.y:
			return -1
		else:
			return 1
	else:
		return 0	
