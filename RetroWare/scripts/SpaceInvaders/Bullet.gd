extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	position.y -= 9
	if position.y < -750:
		queue_free()

func _on_Bullet_body_entered(body):
	if body.is_in_group("Enemy"):
		body.queue_free()
	queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_area_entered(area):
	queue_free()
