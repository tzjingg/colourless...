extends CharacterBody2D

@export var coyote_time : int = 10.0


const SPEED = 400.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var JUMP_VELOCITY = -650.0
var coyote_counter : int = 0

func _physics_process(delta):
	
	if is_on_floor():
		coyote_counter = coyote_time

	if not is_on_floor():
		velocity.y += gravity * delta

	if Input.is_action_just_pressed("jump") and coyote_counter > 0:
		velocity.y = JUMP_VELOCITY
		coyote_counter = 0.0
	else:
		pass
		
	var dirLR = Input.get_axis("move_left","move_right")
	
	if dirLR:
		velocity.x = dirLR * SPEED
		$Player.flip_h = (dirLR == -1)
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED) 

	move_and_slide()

	if Input.is_action_just_pressed("respawn"):
		get_tree().reload_current_scene()


func _on_player_trampoline_jump():
	velocity.y = -2000
