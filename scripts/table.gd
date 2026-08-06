extends Node2D

## Pixel size of one grid cell
@export var cell_size := 1.0

## How fast the table moves in pixels per second
@export var scroll_speed := 1.0

## Number of rows on the table
@export var rows := 8

## Tracks which grid cells have items: Dictionary of Vector2i -> bool
var occupied_cells := {}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

## Checks if dish's shape fits at this position without overlap
func can_place(dish: Node2D, global_pos: Vector2) -> bool:
	return false

## Marks cells as occupied and reparents dish to table
func place_dish(dish: Node2D, global_pos: Vector2) -> void:
	pass

## Converts pixel position to grid cell coords
func _global_to_grid(global_pos: Vector2) -> Vector2i:
	return Vector2i.ZERO

## Moves dish from Animal's child to Table's child
func _reparent_dish(dish: Node2D) -> void:
	pass
