extends RigidBody2D

@export var	paddle_speed = 50000
@export var ball: Ball

func _physics_process(delta):
	var direction = (ball.position - position).normalized()
	linear_velocity.y = direction.y * paddle_speed * delta
