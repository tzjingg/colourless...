extends CollisionShape2D

func _ready():
	pass

func _on_area_2d_body_entered(body):
	get_tree().change_scene_to_file("res://story.tscn")
