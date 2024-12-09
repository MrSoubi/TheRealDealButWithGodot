class_name HealthBar
extends Control

@export var health: PlayerHealth

@onready var h_box_container: HBoxContainer = $HBoxContainer

var health_points: Array[Control]

func _ready() -> void:
	for item in h_box_container.get_children():
		health_points.append(item)
	health.on_health_changed.connect(set_health_bar)

func set_health_bar(points: int):
	for i in health_points.size():
		if i < points:
			health_points[i].visible = true
		else:
			health_points[i].visible = false
