extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal on_score

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func score(ball : KinematicBody2D):
	emit_signal("on_score")
	ball.queue_free()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
