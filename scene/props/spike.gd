extends Node2D

var time = 0

func _on_area_2d_body_entered(body):
	if body.get_name() == "player":
		print(54321)
		_spike()

func _spike():
	get_tree().call_group("player","damage_spike")
	await get_tree().create_timer(time).timeout
	get_tree().call_group("player","damage_spike")
	await get_tree().create_timer(time).timeout
	get_tree().call_group("player","damage_spike")
	await get_tree().create_timer(time).timeout
	get_tree().call_group("player","damage_spike")
