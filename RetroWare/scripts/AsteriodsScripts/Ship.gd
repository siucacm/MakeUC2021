extends "res://scripts/AsteriodsScripts/Weightless.gd"

export(float) var engine_thrust = 200
export(float) var spin_thrust = 2000

var thrust = Vector2()
var rotation_dir = 0

# Called when the node enters the scene tree for the first time.

func _process(_delta):
	if Input.is_action_pressed("ui_up"):
		thrust = Vector2(engine_thrust, 0)
	else:
		thrust = Vector2()
		
	if Input.is_action_pressed("ui_left"):
		rotation_dir = -1
	elif Input.is_action_pressed("ui_right"):
		rotation_dir = 1
	else:
		rotation_dir = 0
		
	pass
	
func _integrate_forces(state):
	set_applied_force(thrust.rotated(rotation))
	set_applied_torque(rotation_dir * spin_thrust)
	._integrate_forces(state)
	pass
