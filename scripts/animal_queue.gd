extends Node2D

signal animal_served
signal animal_left

## Max number of animals waiting
var max_in_queue := 3

## Seconds between new animal arrives
var spawn_interval := 5.0

## Pixels between animals
var spacing := 10.0

## When animals leave, how fast they move when they move forward
var move_speed := 0.5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

## Creates a new animal with a random dish and adds to queue
func spawn_animal() -> void:
	pass

## Returns screen position for animal at index i
func _get_target_position(index: int) -> Vector2:
	return Vector2.ZERO

## When animals leave, move all remaining forward
func _on_animal_removed() -> void:
	pass
