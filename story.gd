extends Label


func _ready():
	self.visible_ratio = 0

func _physics_process(delta):
	visible_ratio += 0.001
