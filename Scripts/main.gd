extends Node2D
#Will store the asset scenes so that I can call them randomly
var assetScene = [preload("res://Scenes/megaman.tscn"),preload("res://Scenes/turbo.tscn"),
preload("res://Scenes/surfin.tscn")]

#This is really just to store the paths of the assets so that I can call either the play() or show() function
#depending on the type of file
var assetPath = [preload("res://sprites/megaman.png"),preload("res://sprites/turbotastic.jpg"),
preload("res://sprites/SubwaySurfers.ogv")]



#I want the size of the screen so that the images will only spawn on the window
@onready var screenSize = get_viewport().get_visible_rect().size


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
	
	#I noticed that, without randomize, it still did what I wanted, but I wanted
	#to be safe and make sure it isn't random just for me, so I'm keeping it.
	randomize()


func load_asset():
	#Picks a random asset
	var currentAsset = assetScene.pick_random().instantiate()
	print(currentAsset) #Debugging
	
	
	
	#sets random position
	currentAsset.position = Vector2(randi_range(0,screenSize.x),randi_range(0,screenSize.y))
	print(currentAsset.position.x,currentAsset.position.y) #Debugging
	
	#Not really sure
	add_child(currentAsset)
	#Displays image or plays video
	currentAsset.show()


#On timeout, invoke load_asset
func _on_timer_timeout() -> void:
	load_asset()
