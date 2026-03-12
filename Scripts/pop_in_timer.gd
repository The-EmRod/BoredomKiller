extends Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var timer = $PopInTimer
	if timer.is_stopped():
		var megaman = get_node("../megaman")
		megaman.visible = true
