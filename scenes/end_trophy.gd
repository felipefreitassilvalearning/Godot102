extends Area2D

@export var target_level: PackedScene
@onready var game_manager = %GameManager


func _on_body_entered(body):
	if (body.name != "CharacterBody2D"):
		return

	if !game_manager.can_win():
		print("Cannot win yet")
		return
	
	print("Level passed")
	queue_free()
	game_manager.set_next_level()
	get_tree().change_scene_to_packed(target_level)
