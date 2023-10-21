extends Area2D

@onready var anim = $AnimatedSprite2D

func _ready():
	anim.play("default")

func _on_body_entered(body):
	if body.name == "player":
		var tween = create_tween()
		
		
		tween.tween_property(self, "position", position + Vector2(0, -30), 0.5)
		tween.tween_property(self, "modulate:a", 0.0, 0.5)
		tween.tween_callback(self.queue_free)
