extends Node

var b_music = load("res://music/y2mate.com - Mysterious Ambient Background Music  The Rake.mp3")
var click_eff = load("res://music/click.mp3")
var menu_music = load("res://music/menu music.mp3")
var credits_music = load("res://music/credits.mp3")
var jumpscare_eff = load("res://music/jump-scare-bell-strike-glitchedtones-heavy-bell-2-00-06.mp3")

func _ready():
	pass
	
func turn_down_volume():
	$music.volume_db = -35

func play_b_music():
#	Musiccontroller.turn_down_volume()
	$music.stream = b_music
	$music.play()

func play_click_eff():
	Musiccontroller.turn_down_volume()
	$music.stream = click_eff
	$music.play()

func play_menu_music():
	Musiccontroller.turn_down_volume()
	$music.stream = menu_music
	$music.play()

func play_credits_music():
	Musiccontroller.turn_down_volume()
	$music.stream = credits_music
	$music.play()

func play_jumpscare_eff():
	$music.stream = jumpscare_eff
	$music.play()
