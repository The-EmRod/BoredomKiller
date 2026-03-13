extends Sprite2D

#What I used to use to delete images. Will need to rework
func _input(event):
	if event.is_action_pressed("click"):
		if is_pixel_opaque(get_local_mouse_position()):
			pass
