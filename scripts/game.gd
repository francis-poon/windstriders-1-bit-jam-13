extends Node2D

var score := 0

@onready var table: Node2D = $Table
@onready var queue: Node2D = $AnimalQueue
@onready var ui: CanvasLayer = $UI

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

## When dish is placed, increments score, updates UI
func _on_animal_served(dish: Node2D) -> void:
	pass

## When animal leaves, handles (do we decrement score?)
func _on_animal_left(animal: Node2D) -> void:
	pass
