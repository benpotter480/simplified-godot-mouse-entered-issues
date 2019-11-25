extends Node2D

export (PackedScene) var dynam_scene

# use of instanced as it would not have loaded the scene in ready
var instanced

func _ready():
	instanced = false
	
	
func _process(delta):
	if !instanced:
		instance()
		instanced = true


func instance():
	var instance_of_dynam = dynam_scene.instance()
	add_child(instance_of_dynam)
	instance_of_dynam.position = Vector2(200,200)
