extends Node

signal gained_coins(int)
signal level_beaten()

var coins : int
var score : int = 0
 
var current_checkpoint : Checkpoint
var pause_menu
var win_screen
var score_label
var information_display
var info_title
var info_label
var level_name

var player : Player
var damage_taken = 0

var paused = false

func respawn_player():
	player.health = player.max_health
	if current_checkpoint != null:
		player.position = current_checkpoint.global_position

func gain_coins(coins_gained:int):
	coins += coins_gained
	emit_signal("gained_coins", coins_gained)

func win():
	emit_signal("level_beaten")
	win_screen.visible = true
	
	score_label.text = "score:" + str(score)

func pause_play():
	paused = !paused
	pause_menu.visible = paused

func show_informations():
	print(current_checkpoint.get_name())

	var checkpoint = current_checkpoint.get_name()

	var info = LevelData.level_dic[level_name]["checkpoints"][checkpoint]["info"]
	var title = LevelData.level_dic[level_name]["checkpoints"][checkpoint]["title"]
	info_title.text = title
	info_label.text = info
	information_display.visible = true
	get_tree().paused = true

func close_info():
	information_display.visible = false
	get_tree().paused = false
	
func resume():
	pause_play()

func restart():
	coins = 0
	score = 0
	get_tree().reload_current_scene()

func load_world():
	get_tree().change_scene_to_file("res://Scenes/WorldScenes/world_map.tscn")

func quit():
	get_tree().quit()
