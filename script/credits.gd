extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	Musiccontroller.play_credits_music()

func _on_back_pressed():
	get_tree().change_scene_to_file("res://scene/menu/menu.tscn")
