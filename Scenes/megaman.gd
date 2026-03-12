extends Sprite2D
@onready var megaman = $"."

#Will make the sprite nonexistent if it's clicked
func _input(event):
	if event.is_action_pressed("click"):
		if is_pixel_opaque(get_local_mouse_position()):
			megaman.queue_free()
