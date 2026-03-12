extends VideoStreamPlayer
@onready var surfer = $"."

#Will make the sprite nonexistent if it's clicked
func _input(event):
	if event.is_action_pressed("click"):
		if get_stream_position():
			surfer.queue_free()
