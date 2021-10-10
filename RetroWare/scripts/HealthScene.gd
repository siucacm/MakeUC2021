extends Node2D

signal on_finished

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var health_text = $Health
onready var anim_player = $ColorRect/AnimationPlayer

func _ready():
	print("Hello")
	anim_player.play("fade_animation")
	#rint(anim_player.is_playing())

func show_health(health):
	health_text.text = "Health Reamining\n" + str(health)

func _on_AnimationPlayer_animation_finished(anim_name):
	emit_signal("on_finished")
