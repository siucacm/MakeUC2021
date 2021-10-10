extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var sprite = get_node("asteroids3shots")
onready var viewport = get_viewport().get_visible_rect().size

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _integrate_forces(state):
	var size = sprite.texture.get_size() * sprite.scale
	var trans = state.get_transform()
	if trans.origin.x < -size.x / 2:
		trans.origin.x += viewport.x + size.x
	elif trans.origin.x > viewport.x + size.x / 2:
		trans.origin.x += viewport.x + size.x
	elif trans.origin.y < -size.y / 2:
		trans.origin.y += viewport.y + size.y
	elif trans.origin.y > viewport.y + size.y / 2:
		trans.origin.y += viewport.y + size.y
		
		state.set_transform(trans)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
