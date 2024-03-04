extends Node


var level_dic = {
	"Level1": {
		"unlocked" : true,
		"score": 0,
		"max_score": 0,
		"coins": 0,
		"max_coins": 0,
		"damage_taken": 0,
		"unlocks": "Level2",
		"beaten": false,
		"checkpoints": {
			"Checkpoint1":{
				"title" :"Introduction to Variables",
				"info" :
				" Detailed Information: Variables are fundamental in programming.  
				 They are used to store information that can be referenced and manipulated in a program.  
				 Think of them as named containers where you can store data that varies or changes over time. 
				
				 Example: Creating a variable to store a user's name. Python Code: user_name = 'Alice' 
				
				 Explanation: This line creates a variable named user_name and assigns it the value 'Alice' "
				
			} 
		}
	}
}

func generate_level(level):
	if level not in level_dic:
		level_dic[level] = {
			"unlocked" : false,
			"score": 0,
			"max_score": 0,
			"coins": 0,
			"max_coins": 0,
			"damage_taken": 0,
			"unlocks": generate_level_number(level),
			"beaten": false
		}


func generate_level_number(level):
	var level_number = ""
	for character in level:
		if character.is_valid_int():
			level_number += character
			
		level_number = int(level_number) + 1
		return "level" + str(level_number)

func update_level(level, score, max_score, coins, max_coins, damage_taken, beaten):
	level_dic[level]["score"] = score
	level_dic[level]["max_score"] = max_score
	level_dic[level]["coins"] = coins
	level_dic[level]["max_coins"] = max_coins
	level_dic[level]["damage_take"] = damage_taken
	level_dic[level]["beaten"] = beaten
	print(level_dic)
