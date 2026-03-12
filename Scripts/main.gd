extends Node2D
#Can be called to display megaman
@onready var megaman = $megaman
#Can be called to display subway surfers
@onready var surfers = $SubwaySurfersA

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
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
	
#This function will call and alter the timer to display random
#images or videos
func _process(_delta: float) -> void:
	var timeStamp : int = 2000
	var currentTime : int = Time.get_ticks_msec()
	
	if(currentTime <= timeStamp):
		megaman.hide()
	else:
		megaman.show()
	
	if currentTime >= (timeStamp*2):
		megaman.hide()
