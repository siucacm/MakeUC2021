extends KinematicBody2D
export var speed = 7.5
var screen_size
var move = Vector2(speed, 0)
var counter = 7
signal dead

func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	position += move 
	if position.x > screen_size.x - 125:
		move.x *= -1
	if position.x < 25:
		move.x *= -1


func _on_Area2D_area_entered(area):
	counter -= 1
	if counter == 0:
		emit_signal("dead")
		queue_free()
