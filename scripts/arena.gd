extends Node3D

var peer = ENetMultiplayerPeer.new()
@export var player_scene: PackedScene
@onready var canvas_layer = $CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_join_pressed() -> void:
	peer.create_client("localhost", 135)
	multiplayer.multiplayer_peer = peer

func _on_host_pressed() -> void:
	peer.create_server(135)
	multiplayer.multiplayer_peer = peer
	multiplayer.peer_connected.connect(_add_player)
	_add_player()
	canvas_layer.visible = false

func _add_player(id = 1):
	var player = player_scene.instantiate()
	player.name = str(id)
	call_deferred("add_child", player)
