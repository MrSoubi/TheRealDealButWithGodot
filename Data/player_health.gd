class_name PlayerHealth
extends Resource

signal on_health_changed
signal on_died

@export var max_health: int

@export var current_health: int :
	get:
		return current_health
	set(value):
		on_health_changed.emit()
		current_health = value
		
		if (current_health <= 0):
			on_died.emit()
