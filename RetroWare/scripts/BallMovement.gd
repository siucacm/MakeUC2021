extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()
var direction = Vector2()

func _ready():
	direction.x = -1
	direction.y = rand_range(0.5, -0.5)

func _physics_process(delta):
	print(velocity)
	velocity = direction * speed
	var collisionInfo = move_and_collide(velocity * delta)
	if collisionInfo:
		var collision_point = collisionInfo.position
		velocity.x = speed * cos(direction.x)
		if "Wall" in collisionInfo.collider.name:
			velocity.y = -(speed * sin(direction.y))
		else:
			print(collision_point)
		
		
