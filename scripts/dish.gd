extends Node2D

signal placed_successfully

@export var cell_size := 1.0

## Cell offsets determining dish shape
var shape: Array[Vector2i] = []

## Art sprite for dish
var texture: Texture2D

## True if player currently dragging dish
var dragging := false

## True if dish is placed on table
var is_placed := false

## Distance between mouse and piece origin when grabbed
var drag_offset: Vector2 = Vector2.ZERO

## Ref to Sprite2D child node
@onready var sprite: Sprite2D = $Sprite

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

## Renders dish cells
func _draw() -> void:
	pass

## Handles click, drag, release, and rotate
func _input(event: InputEvent) -> void:
	pass

## Rotates 90 degrees clockwise (x,y) -> (y,-x)
func _rotate() -> void:
	pass

## Normalizes shape so min(x,y) is 0 after rotation
func _normalize_shape() -> void:
	pass

## Calls Table to see if placement is valid, places or returns
func _attempt_place() -> bool:
	return false

## Moves dish back to position with Animal
func _return_to_animal() -> void:
	pass

## Returns true if mouse cursor is within any cell of the shape
func is_mouse_over() -> bool:
	return false
