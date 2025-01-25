extends Node3D

var enet_peer = ENetMultiplayerPeer.new()
const player_scene = preload("res://addons/fpc/character.tscn")
@onready var canvas_layer = $CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_join_pressed() -> void:
	canvas_layer.visible = false
	enet_peer.create_client("192.168.106.78", 135)
	multiplayer.multiplayer_peer = enet_peer
	add_player(multiplayer.get_unique_id())
	# multiplayer.multiplayer_peer = peer

func _on_host_pressed() -> void:
	canvas_layer.visible = false
	enet_peer.create_server(135)
	multiplayer.multiplayer_peer = enet_peer
	multiplayer.peer_connected.connect(add_player)
	add_player(multiplayer.get_unique_id())
	

func add_player(peer_id):
	var player = player_scene.instantiate()
	player.name = str(peer_id)
	add_child(player)
