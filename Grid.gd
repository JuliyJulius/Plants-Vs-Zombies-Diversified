extends Node

onready var _tilemap : TileMap = get_node("TileMap")

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
				# Get which tile is under the mouse
				var mouse_pos = _tilemap.get_local_mouse_position()
				var cell_pos = _tilemap.world_to_map(mouse_pos)
				var tile_id = _tilemap.get_cellv(cell_pos)
				var tile_name = _tilemap.tile_set.tile_get_name(tile_id)
				# Do stuff according to the above
				if tile_name == "white":
					# For example, turn the tile into a black tile when clicked
					var black_tile_id = _tilemap.tile_set.find_tile_by_name("black")
					_tilemap.set_cellv(cell_pos, black_tile_id)
