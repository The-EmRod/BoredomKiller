extends Node2D
#To preload the assets used in the code
@onready var megaman_scene = preload("res://Scenes/megaman.tscn")
var subway_scene = preload("res://sprites/SubwaySurfers.ogv")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Pulled it from a Godot tutorial. Reminder text to post a link in READ-ME
	
	#Get access to the Operating System Window
	var window = get_window()
	
	#1. Transparency setup
	get_viewport().transparent_bg = true
	window.transparent = true
	
	#2. Window shape
	#We want to remove the borders, so everything looks like it's floating
	window.borderless = true
	
	#Keep the sprites in front of your browser and other stuff. For funsiess
	window.always_on_top = true
	
	#Force borderless
	window.unresizable = false
	
	
#On timeout, invoke $megaman's create_ob method
func _on_timer_timeout():
	$megaman.create_ob(megaman_scene)
