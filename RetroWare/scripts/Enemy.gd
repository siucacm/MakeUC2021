extends KinematicBody2D
export var speed = 10
var screen_size
var move = Vector2(speed, 0)

func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	position += move 
	if position.x > screen_size.x - 125:
		move.x *= -1
	if position.x < 25:
		move.x *= -1


func _on_Area2D_area_entered(area):
	position.x += 100
