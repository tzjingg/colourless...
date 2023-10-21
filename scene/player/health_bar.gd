extends Node2D

signal trampoline_jump()

const MAX_HEALTH = 100
var health = MAX_HEALTH

func _ready():
	set_health_bar()

func set_health_bar():
	$hud/health_bar.value = health
	$hud/health_bar.max_value = MAX_HEALTH

func damage_spike():
	health -= 5
	if health == 0 or health < 0:
		death()
	set_health_bar()

func death():
	get_tree().change_scene_to_file("res://scene/die/death.tscn")

	
func _on_lvl_2_trampoline():
	emit_signal("trampoline_jump")
