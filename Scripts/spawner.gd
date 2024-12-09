class_name Spawner
extends Node3D

@export var sceneToSpawn: PackedScene
@export var spawnTrigger: Trigger

func _enter_tree() -> void:
	spawnTrigger.on_trigger.connect(spawn)

func spawn():
	var spawnedScene = sceneToSpawn.instantiate()
	add_sibling(spawnedScene)
	spawnedScene.position = position
