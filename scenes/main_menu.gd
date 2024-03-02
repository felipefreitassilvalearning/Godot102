extends Node

@onready var play = %Play


func _on_play_pressed():
	const level_1_path = "res://scenes/level_1.tscn"
	get_tree().change_scene_to_file(level_1_path)
