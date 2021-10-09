extends KinematicBody2D

export (int) var speed = 400

var velocity = Vector2()

signal ball_scored(ball)

func _ready():
	velocity.x = rand_range(-0.3, -0.7)
	velocity.y = rand_range(-1, 1)
	velocity *= speed

func _physics_process(delta):
	var collisionInfo = move_and_collide(velocity * delta)
	if collisionInfo:
		var collider = collisionInfo.collider
		velocity = velocity.bounce(collisionInfo.normal)
		if collider.name == "LeftWall" and collider.has_method("score"):
			collisionInfo.collider.score(self)
		
		
