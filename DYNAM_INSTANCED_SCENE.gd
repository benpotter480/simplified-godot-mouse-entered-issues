extends KinematicBody2D


func _ready():
	input_pickable = true
	
	connect("mouse_entered", self, "_on_mouse_entered")
	
func _on_mouse_entered():
	print("mouse entered")