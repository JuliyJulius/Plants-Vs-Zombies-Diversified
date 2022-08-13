extends Label

var counter = 0
onready var tween = get_node("Tween")

func _on_Sun_pressed():
	counter += 25
	text = str(counter)
	
func _on_Tween_tween_step():
	tween.start()
