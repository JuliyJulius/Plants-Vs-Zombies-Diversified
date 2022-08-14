<<<<<<< Updated upstream
extends TileMap
class_name InteractiveTileMap

#Replaces Specific Tiles with Specific Scenes
export(Dictionary) var TILE_SCENES := {
	0: preload("res://Mouse_Grid.tscn")
}

#Half Cell Size / Offset
onready var half_cell_size := cell_size * 0.5
var offset := Vector2(321,99)

#When the game starts, it replaces tiles with scenes
func _ready():
	yield(get_tree(), "idle_frame")
	_replace_tiles_with_scenes()

func _replace_tiles_with_scenes(scene_dictionary: Dictionary = TILE_SCENES):
	for tile_pos in get_used_cells():
		var tile_id = get_cell(tile_pos.x, tile_pos.y)
		
		if scene_dictionary.has(tile_id):
			var object_scene = scene_dictionary[tile_id]
			_replace_tile_with_object(tile_pos, object_scene)
			
func _replace_tile_with_object(tile_pos: Vector2, object_scene: PackedScene, parent: Node = get_tree().current_scene):
	#Clear the cell in TileMap
	if get_cellv(tile_pos) != INVALID_CELL:
		set_cellv(tile_pos, -1)
		update_bitmask_region()
		
	#Spawn the object
	if object_scene:
		var obj = object_scene.instance()
		var ob_pos = map_to_world(tile_pos) + half_cell_size + offset
		
		parent.add_child(obj)
		obj.global_position = ob_pos
=======
extends TileMap
class_name InteractiveTileMap

#Replaces Specific Tiles with Specific Scenes
export(Dictionary) var TILE_SCENES := {
	0: preload("res://Mouse_Grid.tscn")
}

#Half Cell Size / Offset
onready var half_cell_size := cell_size * 0.5
var offset := Vector2(321,99)

#When the game starts, it replaces tiles with scenes
func _ready():
	yield(get_tree(), "idle_frame")
	_replace_tiles_with_scenes()

func _replace_tiles_with_scenes(scene_dictionary: Dictionary = TILE_SCENES):
	for tile_pos in get_used_cells():
		var tile_id = get_cell(tile_pos.x, tile_pos.y)
		
		if scene_dictionary.has(tile_id):
			var object_scene = scene_dictionary[tile_id]
			_replace_tile_with_object(tile_pos, object_scene)
			
func _replace_tile_with_object(tile_pos: Vector2, object_scene: PackedScene, parent: Node = get_tree().current_scene):
	#Clear the cell in TileMap
	if get_cellv(tile_pos) != INVALID_CELL:
		set_cellv(tile_pos, -1)
		update_bitmask_region()
		
	#Spawn the object
	if object_scene:
		var obj = object_scene.instance()
		var ob_pos = map_to_world(tile_pos) + half_cell_size + offset
		
		parent.add_child(obj)
		obj.global_position = ob_pos
>>>>>>> Stashed changes
