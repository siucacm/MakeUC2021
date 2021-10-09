extends Node2D

signal game_finished(didWin)

export(int) var game_duration = 10

const ball_factory = preload("res://Scenes/Pong/Ball.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var ball = ball_factory.instance()
	add_child(ball)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_LeftWall_on_score():
	emit_signal("game_finished", false)


func _on_SpawnTimer_timeout():
	var ball = ball_factory.instance()
	add_child(ball)


func _on_Timer_on_timeout():
	emit_signal("game_finished", true)
