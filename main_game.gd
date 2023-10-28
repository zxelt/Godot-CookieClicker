extends Node2D

@export var Points = 10
@export var PointsPerSeconds = 50


func _ready():
	$UI/Points.text = str(Points)
	$UI/PointsSeconds.text = str(PointsPerSeconds) + "/s"



func _process(delta):
	pass


func _on_cookie_button_pressed():
	Points += 1
	$UI/Points.text = str(Points)



func _on_points_per_seconds_timeout():
	Points += PointsPerSeconds
	$UI/Points.text = str(Points)

