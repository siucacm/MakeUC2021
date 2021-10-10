extends Sprite

func _ready():
	self.visible = false

func _on_Player_win():
	self.visible = true
