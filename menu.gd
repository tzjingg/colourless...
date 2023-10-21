extends CanvasLayer


func _on_startbtn_button_down():
	get_tree().change_scene_to_file("res://scene/lvl/lvl_1.tscn")

func _on_settingsbtn_button_down():
	pass

func _on_quitbtn_button_down():
	get_tree().quit()
