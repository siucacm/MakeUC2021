extends Node2D

export(int) var health = 3

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var container = $"GameContainer"

# Called when the node enters the scene tree for the first time.
func _ready():
	switch_scene("res://Scenes/Pong/Pong.tscn")

func clear_game():
	for n in container.get_children():
		container.remove_child(n)
		n.queue_free()

func switch_scene(path):
	clear_game()
	show_health_scene()
	var scene = load(path).instance()
	scene.connect("game_finished", self, "_on_game_finished")
	container.add_child(scene)

func show_health_scene():
	var scene = load("res://Scenes/HealthScene.tscn").instance()
	container.add_child(scene)
	scene.show_health(health)
	yield (scene, "on_finished")

func _on_game_finished(didWin):
	if didWin:
		print("You won :)")
	else:
		health -= 1
		print("You Lost :(")
	
