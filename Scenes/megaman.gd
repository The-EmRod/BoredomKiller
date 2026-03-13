extends Sprite2D

#What I used to use to delete images. Will need to rework
func _input(event):
	if event.is_action_pressed("click"):
		if is_pixel_opaque(get_local_mouse_position()):
			pass


func create_ob(megaman_scene):
	var megaman_instance = megaman_scene.instantiate()
	megaman_instance.position = Vector2(randi() % 301,randi() % 301)
	megaman_instance.visible = true
	add_child(megaman_instance)
	
