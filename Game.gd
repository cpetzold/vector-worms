extends Node2D
var next_frame = false

func _process(delta):
	if not get_tree().paused and next_frame:
		get_tree().paused = true

func _input(event):
	if event.is_action("step") and (event.is_pressed() or event.is_echo()):
		if get_tree().paused:
			next_frame = true
			get_tree().paused = false
			print("next frame")
		else:
			get_tree().paused = true
