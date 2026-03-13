extends Node2D
#To preload the assets used in the code
@onready var megaman_scene = preload("res://Scenes/megaman.tscn")

#Will store the assets so that I can call them randomly
var assets = [preload("res://Scenes/megaman.tscn")]
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
	

func load_asset():
	var currentAsset = assets.pick_random()
	currentAsset.instantiate()
	currentAsset.position = Vector2(randi() % 301,randi() % 301)
	currentAsset.show()

#On timeout, invoke load_asset
func _on_timer_timeout():
	load_asset()
