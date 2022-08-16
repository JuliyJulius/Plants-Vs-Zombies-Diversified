extends Node

var current_scene = null
var SunCount = 0


func _ready():
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1)
