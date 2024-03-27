extends Node

signal gained_coins(int)
signal level_beaten()

var world_map_scene = preload("res://Scenes/WorldScenes/world_map.tscn").instantiate()

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
var continue_btn
var close_btn
var choices
var display_question

var player : Player
var damage_taken = 0

var paused = false
var break_text_creation = false


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
	
	await get_tree().create_timer(2).timeout
	get_tree().unload_current_scene()
	#await get_tree().create_timer(5).timeout
	#get_tree().change_scene_to_packed(world_map_scene)
	load_world()
	#get_tree().change_scene_to_file.bind("res://Scenes/WorldScenes/world_map.tscn").call_deferred()

	#await get_tree().process_frame

func pause_play():
	paused = !paused
	print("WWWWWWW")
	print(paused)
	pause_menu.visible = paused

func show_informations(selected_checkpoint=null):
	continue_btn.visible = true
	close_btn.visible = false

	var checkpoint = current_checkpoint.get_name()
	if (selected_checkpoint != null):
		checkpoint = selected_checkpoint
	var title = "Introduction"
	var info
	if (checkpoint == "Start"):
		info = LevelData.level_dic[level_name]["introduction"]
	else:
		info = LevelData.level_dic[level_name]["checkpoints"][checkpoint]["info"]
		title = LevelData.level_dic[level_name]["checkpoints"][checkpoint]["title"]
	break_text_creation = false
	info_title.text = title
	animate_text(info)

	information_display.visible = true
	get_tree().paused = true


func animate_text(text_to_animate: String):
	# Reset the label's text
	info_label.text = ""
	var current_pos = 0
	var speed = 0.05  # Adjust the speed as needed; smaller values = faster animation
	
	while current_pos < text_to_animate.length():
		# Append one character at a time
		if break_text_creation:
			break
		info_label.text += text_to_animate[current_pos]
		current_pos += 1
		# Wait for a bit before showing the next character
		await get_tree().create_timer(speed).timeout



func close_info():
	information_display.visible = false
	info_label.text = ""
	get_tree().paused = false
	
func finish_text():
	var checkpoint = current_checkpoint.get_name()
	var info
	if (checkpoint == "Start"):
		info = LevelData.level_dic[level_name]["introduction"]
	else:
		info = LevelData.level_dic[level_name]["checkpoints"][checkpoint]["info"]
	info_label.text = info
	break_text_creation = true
	continue_btn.visible = false
	close_btn.visible = true
	
	
func resume():
	pause_play()

func restart():
	get_tree().reload_current_scene()

func load_world():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/WorldScenes/world_map.tscn")

func quit():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/WorldScenes/StartScreen.tscn")
