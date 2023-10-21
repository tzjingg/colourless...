extends Node2D

func _ready():
	Musiccontroller.play_jumpscare_eff()
	print('hi')
	await get_tree().create_timer(3.0).timeout
	get_tree().change_scene_to_file("res://scene/lvl/lvl_1.tscn")
