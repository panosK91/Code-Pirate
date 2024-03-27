extends CanvasLayer

@onready var wrongScreen = $WrongScreen

func _ready():
	GameManager.pause_menu = $PauseMenu
	GameManager.win_screen = $WinScreen
	GameManager.score_label = $WinScreen/Label
	GameManager.information_display = $InformationDisplay
	GameManager.info_label = $InformationDisplay/MarginContainer/HBoxContainer/RichTextLabel
	GameManager.info_title = $InformationDisplay/MarginContainer2/HBoxContainer/Title
	GameManager.continue_btn = $InformationDisplay/MarginContainer3/VBoxContainer/HBoxContainer/Continue
	GameManager.close_btn = $InformationDisplay/MarginContainer3/VBoxContainer/HBoxContainer/Close
	GameManager.choices = $ChoicesDialog/Choices
	GameManager.display_question = $ChoicesDialog
	GameManager.gained_coins.connect(update_coin_display)

	
func update_coin_display(gained_coins):
	$CoinDisplay.text = str(GameManager.coins)


func _process(_delta):
	if Input.is_action_just_pressed("pause"):
		print("swwew")
		GameManager.pause_play()
		get_tree().paused = GameManager.paused

func _on_restart_pressed():
	get_tree().paused =	false
	GameManager.restart()


func _on_world_map_pressed():
	GameManager.load_world()


func _on_quit_pressed():
	GameManager.quit()


func _on_finish_level_pressed():
	GameManager.load_world()


func _on_resume_pressed():
	GameManager.resume()
	print("WWWWW")
	print(GameManager.paused)
	get_tree().paused = GameManager.paused


func _on_button_pressed():
	GameManager.finish_text()


func _on_continue_pressed():
	GameManager.finish_text()


func _on_close_pressed():
	GameManager.close_info()


func _on_wrong_pressed():
	wrongScreen.visible = true
	await get_tree().create_timer(2).timeout
	wrongScreen.visible = false

func _on_correct_pressed():
	GameManager.win()


func _on_wrong_2_pressed():
	wrongScreen.visible = true
	await get_tree().create_timer(2).timeout
	wrongScreen.visible = false


func _on_wrong_3_pressed():
	wrongScreen.visible = true
	await get_tree().create_timer(2).timeout
	wrongScreen.visible = false
