extends Node2D

@export var speed = 160.0
var current_speed = 0.0

#@onready var spawn_pos = global_posisiton

func _physics_process(delta):
	position.y += current_speed * delta

func _on_hitbox_area_entered(area):
	if area.get_parent() is Player:
		area.get_parent().take_damage(1)
		queue_free()


func _on_player_detect_area_entered(area):
	if area.get_parent() is Player:
		fall()

func fall():
	current_speed = speed
	await get_tree().create_timer(5).timeout
	#position = spawn_pos
	current_speed = 0
