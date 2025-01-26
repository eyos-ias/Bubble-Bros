extends Node

var ip_address: String
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("started desu")
	ip_address = "192.168.0.104"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func changeip(address: String):
	print("changing ip")
	ip_address = address
