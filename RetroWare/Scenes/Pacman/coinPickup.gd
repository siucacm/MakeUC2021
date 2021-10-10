extends Area2D


# Declare member variables here.

onready var pacman = get_node("../pacman")



# Called when the node enters the scene tree for the first time.
func _ready():
	connect("on_body_entered", self, "_on_body_entered")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_coin_area_entered(area):
	pacman.addCoin()
	queue_free()
