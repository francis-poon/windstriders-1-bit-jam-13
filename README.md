# windstriders-1-bit-jam-13


```
mermaid
classDiagram
    class UI {
        -Label score
        +update_score(score int)
    }

    class Game {
        -int score
        +_ready()
        +_on_animal_served(dish Dish)
        +_on_animal_left(animal Animal)
    }

    class Table {
        -float cell_size
        -float scroll_speed
        -int rows
        -Dictionary~Vector2i&#44; bool~occupied_cells
        +_process(delta float)
        +global_to_grid(global_pos Vector2) Vector2i
        +can_place(cells Array~Vector2i~) bool
        +place_dish(dish Dish&#44; cells Array~Vector2i~)
    }

    class Animal {
        -String animal_type
        -float patience
        +_ready()
        +_on_dish_placed()
        +_on_patience_expired()
        +_emote_happy()
        +_emote_sad()
    }

    class Dish {
        -Array~Vector2i~ shape
        -Texture2D texture
        -Sprite2D sprite
        -bool dragging
        -bool is_placed
        -float cell_size
        -Vector2 drag_offset
        +_draw()
        +_input(event InputEvent)
        +_rotate()
        +_normalize_shape()
        +_attempt_place()
        +_return_to_animal()
        +_is_mouse_over() bool
        +_reparent_to_table(table Table)
    }

    class DishShapes {
        +Dictionary SHAPES$
    }

    class AnimalQueue {
        -int max_in_queue
        -float spawn_interval
        -im sure im missing some data types here
        -float spacing?
        -float movement_speed?
        +spawn_animal()
        +_get_target_position(index int) Vector2
        +_on_animal_removed()
    }

    Game *-- Table : owns
    Game *-- AnimalQueue : owns
    Game *-- UI : owns
    AnimalQueue o-- Animal : has many
    Animal *-- Dish : has one
    Dish ..> Table : queries placement
    Dish ..> DishShape : reads shape data

    AnimalQueue ..> Game : animal_served
    AnimalQueue ..> Game : animal_left
    Animal ..> AnimalQueue : served
    Animal ..> AnimalQueue : impatient
    Dish ..> Animal : placed_successfully
```

