extends Node3D


@onready var bubble_spawn_timer: Timer = $BubbleSpawnTimer
@export var bubble_scene : PackedScene

@onready var animation_player := $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.initial_level = self
	bubble_spawn_timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_bubble_spawn_timer_timeout() -> void:
	for i in range(4):
		var new_bubble = bubble_scene.instantiate()
		
		add_child(new_bubble)
		new_bubble.position = Vector3(randf_range(-10.0, 10.0), randf_range(0.1, 6.5), -14.0)

func flash_background():
	animation_player.play("BubbleHitFlash")
