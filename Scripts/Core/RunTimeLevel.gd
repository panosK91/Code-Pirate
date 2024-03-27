extends Node
class_name RunTimeLevel

@onready var level_name = name


var max_score = 0
var max_coins = 0


func _ready():
	GameManager.level_name = level_name
	GameManager.level_beaten.connect(beat_level)
	set_values()
	$water/AnimationPlayer.play("water")

func set_values():
	for node in get_children():
		if node is Coin:
			max_score += max_score
			max_coins += node.coins
		if node is Sabertooth or node is Canon:
			max_score += node.score
	
func beat_level():
	LevelData.generate_level(LevelData.level_dic[level_name]["unlocks"])
	LevelData.level_dic[LevelData.level_dic[level_name]["unlocks"]]["unlocked"] = true
	
	LevelData.update_level(level_name, GameManager.score, max_score, GameManager.coins, max_coins, GameManager.damage_taken, true)


func _on_area_2d_area_entered(area):
		if area.get_parent() is Player:
			GameManager.respawn_player()
