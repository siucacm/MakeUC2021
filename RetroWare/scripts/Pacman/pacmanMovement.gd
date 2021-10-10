extends KinematicBody2D

export (int) var speed = 200
export (float) var rotation_speed = 1.5

var velocity = Vector2()
var rotation_dir = 0
var coinCount = 0

func addCoin():
	coinCount += 1
	print(coinCount)
	if (coinCount == 52):
		print("YOU WIN!!!")
	#return true

func get_input():
	# velocity = Vector2()
	# rotation_dir = 0
	if Input.is_action_pressed("ui_right"):
		velocity.x = 1
		velocity.y = 0
		rotation_dir = 0
	if Input.is_action_pressed("ui_left"):
		velocity.x = -1
		velocity.y = 0
		rotation_dir = PI
	if Input.is_action_pressed("ui_down"):
		velocity.y = 1
		velocity.x = 0
		rotation_dir = PI/2		
	if Input.is_action_pressed("ui_up"):
		velocity.y = -1
		velocity.x = 0
		rotation_dir = -PI/2
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	rotation = rotation_dir
	velocity = move_and_slide(velocity)
	
