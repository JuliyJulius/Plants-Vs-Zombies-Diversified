extends Label

onready var tween = get_node("Tween")
onready var Global = get_node("/root/Globals")
const Piece = preload("res://Sun.tscn")

func _on_Tween_tween_step():
	tween.start()

func _process(delta):
	text = str(Global.SunCount)
	
func addPiece():
	var piece = Piece.instance()
	piece.connect("clicked", self, "handle_piece_click")
	add_child(piece)

func handle_piece_click(piece):
	Global.SunCount += 25
	print("Processed Clicked")
	pass
