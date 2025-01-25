extends Node

var initial_level : Node3D

enum {
	DAMAGE_BUFF,
	SPEED_BUFF,
	JUMP_BUFF,
	DEFENCE_BUFF,
	SMALL_HITBOX,
	RELOAD_BUFF,
	STATUS_BUFF
}

func _ready() -> void:
	randomize()
