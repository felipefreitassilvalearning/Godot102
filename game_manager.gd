extends Node

@onready var label = %PointsLabel


var points = 0
var current_level = 1


func add_point():
	points += 1
	var score = "Points: %s / %s"
	var current_points = str(points)
	var required_points = str(current_level)
	label.text = score % [current_points, required_points]


func can_win():
	# Player can win if he has enough points
	return points >= current_level
	

func set_next_level():
	current_level += 1
