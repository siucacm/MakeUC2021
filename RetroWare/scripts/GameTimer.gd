extends Control

signal on_timeout

export(int) var game_duration = 10

onready var countdown = $Countdown

# Called when the node enters the scene tree for the first time.
func _ready():
	countdown.text = str(game_duration)


func _on_CountdownTimer_timeout():
	if game_duration > 0:
		game_duration -= 1
		countdown.text = str(game_duration)
