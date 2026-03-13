extends Node2D
#Will store the assets so that I can call them randomly
var assets = [preload("res://Scenes/megaman.tscn"),preload("res://Scenes/turbo.tscn")]

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
	
	#Does not work. Causes errors
	#I want to make it to where the images don't initially load on the screen
	for n in assets:
		assets.n.visible = false


func load_asset():
	#Picks a random asset
	var currentAsset = assets.pick_random().instantiate()
	#sets a random position
	currentAsset.position = Vector2(randi() % 301,randi() % 301)
	add_child(currentAsset)
	currentAsset.show()


#On timeout, invoke load_asset
func _on_timer_timeout() -> void:
	load_asset()
