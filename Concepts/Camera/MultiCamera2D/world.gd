extends Node2D

func _ready():
	for p in get_tree().get_nodes_in_group("players"):
		$MultiTargetCamera.add_target(p)
		
	var r = $TileMap.get_used_rect()
	$MultiTargetCamera.limit_left = r.position.x * $TileMap.tile_set.tile_size.x
	$MultiTargetCamera.limit_right = r.end.x * $TileMap.tile_set.tile_size.x
	$MultiTargetCamera.limit_bottom = r.end.y * $TileMap.tile_set.tile_size.y


