extends Node2D

signal served
signal impatient

@onready var dish: Node2D = $Dish
@onready var patience_timer: Timer = $PatienceTimer

## Which animal is this. Probably needs to be updated to be Sprite asset
var animal_type := ""

## Seconds before Animal leaves
var patience := 5.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

## Handles successful placement
func _on_dish_placed() -> void:
	pass

## Handles animal leaving
func _on_patience_expired() -> void:
	pass

## Happy animation when Dish is placed
func _emote_happy() -> void:
	pass

## Sad animation when animal leaves
func _emote_sad() -> void:
	pass
