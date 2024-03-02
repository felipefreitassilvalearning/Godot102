extends Node

@onready var label = %PointsLabel


var points = 0


func add_point():
	points += 1
	label.text = "Points: " + str(points)


func win():
	print("Game Won!")
