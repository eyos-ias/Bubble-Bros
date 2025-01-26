extends MeshInstance3D
# jump
# firerate
# gun distance

var bubble_type: String = "speed"

func _ready():
	if (bubble_type == "speed"):
		print("this is the speed bubble")
	elif (bubble_type == "firerate"):
		print("this is fire rate")
	elif (bubble_type == "gun_distance"):
		print("this is gun distance")

func _process(delta: float) -> void:
	pass

func _on_area_3d_area_entered(area: Area3D) -> void:
	if (area.is_in_group("bullet")):
		print("bullet detected")
		queue_free()


func _on_destroy_timer_timeout() -> void:
	if (bubble_type == "speed"):
		print("this is the speed bubble")
	elif (bubble_type == "firerate"):
		print("this is fire rate")
	elif (bubble_type == "gun_distance"):
		print("this is gun distance")
	queue_free()
