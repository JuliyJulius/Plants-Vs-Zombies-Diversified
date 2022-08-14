<<<<<<< Updated upstream
extends Node

#Variables
var can_place_plant = false
var invalid_tiles

#Plants cannot be planted on these tiles
func _ready():
	invalid_tiles = $nav/tilemap_nav.get_used_cells()

func _unhandled_input(event):
	if event is InputEventMouseMotion and can_place_plant:
		$plant_placement.clear()
		
		#Get the Tile Location of the Mouse Cursor
		var tile = $plant_placement.world_to_map(event.position)
		
		if not tile in invalid_tiles:
			#Green Valid Tile
			$plant_placement.set_cell(tile.x, tile.y, 0)
		else:
			#Red Invalid Tile
			$plant_placement.set_cell(tile.x, tile.y, 1)


func _on_TextureButton_pressed():
	$plant_placement.clear()
	can_place_plant = !can_place_plant
=======
extends Node

#Variables
var can_place_plant = false
var invalid_tiles

#Plants cannot be planted on these tiles
func _ready():
	invalid_tiles = $nav/tilemap_nav.get_used_cells()

func _unhandled_input(event):
	if event is InputEventMouseMotion and can_place_plant:
		$plant_placement.clear()
		
		#Get the Tile Location of the Mouse Cursor
		var tile = $plant_placement.world_to_map(event.position)
		
		if not tile in invalid_tiles:
			#Green Valid Tile
			$plant_placement.set_cell(tile.x, tile.y, 0)
		else:
			#Red Invalid Tile
			$plant_placement.set_cell(tile.x, tile.y, 1)


func _on_TextureButton_pressed():
	$plant_placement.clear()
	can_place_plant = !can_place_plant
>>>>>>> Stashed changes
