extends Node3D


@onready var anim_start_timer := $AnimStartTimer
@onready var anim_player := $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var wait_time := randf_range(0.0, 0.7)
	anim_start_timer.wait_time = wait_time
	anim_start_timer.start()
	scale = Vector3(1, 1, 1) * randf_range(0.3, 1.1)


func _on_anim_start_timer_timeout() -> void:
	anim_player.play("bob_up_down")
