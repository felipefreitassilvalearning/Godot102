extends Node

@onready var play = %Play
@onready var next_level = %NextLevel


func _on_next_level_pressed():
	const scenes_path = "res://scenes/"
	const next_scene = scenes_path + "level_2.tscn"
	get_tree().change_scene_to_file(next_scene)


func _on_play_pressed():
	const level_1_path = "res://scenes/level_1.tscn"
	get_tree().change_scene_to_file(level_1_path)
