extends KinematicBody2D


onready var sprite: Sprite = $Sprite


func _physics_process(delta):
	sprite.frame = wrapi(sprite.frame + 1, 0, sprite.hframes)
