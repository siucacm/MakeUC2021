extends Node2D

onready var mouse = preload("res://Scenes/mouse.tscn")

func _ready():
	add_mouse()
	pass

func add_mouse():
	var inst = mouse.instance()
	inst.position = Vector2(get_random_number(900, 50), get_random_number(500,50)) 
	inst.connect("mouse_eaten",self,"spawn_next_mouse_and_tail")
	add_child(inst)

func spawn_next_mouse_and_tail():
	add_mouse()
	get_node("snake").add_tail()

func get_random_number(MAX, MIN):
	randomize()
	var num = randi()%MAX + MIN
	return num
