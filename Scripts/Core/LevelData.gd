extends Node

var level_dic = {
	"Level1": {
		"unlocked": true,
		"score": 0,
		"max_score": 0,
		"coins": 0,
		"max_coins": 0,
		"damage_taken": 0,
		"unlocks": "Level2",
		"beaten": false,
		"introduction": "Our hero, Captain Codebeard, finds an ancient map leading to the legendary Isle of Variables. As he sets sail, he learns that variables are like the treasure chests of programming, holding valuable data. Navigating through the Isle, he encounters various types of treasure chests—Integers, Strings, and Booleans—each requiring a different key to unlock. The final challenge teaches him the art of Data Type Conversion, crucial for combining treasures of different forms.",
		"checkpoints": {
			"Checkpoint1": {
				"title": "Introduction to Variables",
				"info": "Variables are fundamental in programming. They are used to store information that can be referenced and manipulated in a program. Think of them as named containers where you can store data that varies or changes over time.\n\n[b]Example[/b]: Creating a variable to store a user's name. Python Code: user_name = 'Alice'\n\n[b]Explanation[/b]: This line creates a variable named user_name and assigns it the value 'Alice'."
			},
			"Checkpoint2": {
				"title": "Integer Data Type",
				"info": "The integer data type is used to represent whole numbers. These can be positive or negative numbers but don’t include fractions or decimals. Integers are essential for counting, indexing, and operations that require precision.\n\n[b]Example[/b]: Assigning an age to a variable. Python Code: age = 30\n\n[b]Explanation[/b]: Here, age is a variable that stores the integer 30, representing a person's age."
			},
			"Checkpoint3": {
				"title": "String Data Type",
				"info": "Strings are sequences of characters used to store text. They can include letters, numbers, symbols, and spaces. In many programming languages, strings are enclosed in quotes (either single or double).\n\n[b]Example[/b]: Storing a greeting message in a variable. Python Code: greeting = 'Hello, World!'\n\n[b]Explanation[/b]: greeting is a variable holding the string 'Hello, World!'. This text can be displayed to users."
			},
			"Checkpoint4": {
				"title": "Boolean Data Type",
				"info": "Boolean is a data type with only two possible values: True or False. It is used in conditions and control flow to decide the direction in which the program will proceed based on whether a condition is met.\n\n[b]Example[/b]: Checking if a user is an adult. Python Code: is_adult = age >= 18\n\n[b]Explanation[/b]: If age is 18 or more, is_adult will be True; otherwise, False. It's a simple way to check conditions."
			},
			"Checkpoint5": {
				"title": "Data Type Conversion",
				"info": "Sometimes, it's necessary to convert data from one type to another. This could be converting a number into a string to concatenate it with other strings or converting strings to numbers to perform mathematical operations.\n\n[b]Example[/b]: Converting an integer to a string to combine it with other text. Python Code: age = 30; message = 'Your age is ' + str(age)\n\n[b]Explanation[/b]: Here, str(age) converts the integer 30 into a string, allowing it to be concatenated with the 'Your age is ' string."
			},
			"FinalQuestion": {
				"title": "Testing Understanding of Variables and Data Types",
				"info": "If you have a variable age with the value 21 (an integer) and want to combine it with the string 'John is ' to make the sentence 'John is 21', how would you correctly do this?",
				"options": "A) 'John is ' + age\nB) 'John is ' + str(age)\nC) int('John is ') + age\nD) 'John is ' . age",
				"answer": "B"
			}
		}
	},
	"Level2": {
		"unlocked": false,
		"score": 0,
		"max_score": 0,
		"coins": 0,
		"max_coins": 0,
		"damage_taken": 0,
		"unlocks": "Level3",
		"beaten": false,
		"introduction": "With his ship loaded with treasures, Captain Codebeard now faces the Conditional Caves. Here, the path forward is determined by If-Else Statements—mysterious inscriptions that change the caves' layout based on certain conditions. Captain Codebeard learns to use these conditions to navigate through the caves, facing challenges that teach him the power of 'elif' and the complexity of Nested If-Else Statements, guiding him to make the right decisions at each fork in the path.",
		"checkpoints": {
			"Checkpoint1": {
				"title": "Introduction to If-Else Statements",
				"info": "If-Else statements are used to execute different blocks of code based on certain conditions. They are the foundation of controlling the flow of execution in programming.\n\n[b]Example[/b]: A basic if-else statement that checks if a number is positive. Python Code: if number > 0: print('Positive') else: print('Not Positive')\n\n[b]Explanation[/b]: This code checks if the variable 'number' is greater than 0 and prints 'Positive' if true, otherwise prints 'Not Positive'."
			},
			"Checkpoint2": {
				"title": "Using Elif for Multiple Conditions",
				"info": "The 'elif' (else if) statement allows for multiple conditions to be checked in sequence, each with its own block of code to execute.\n\n[b]Example[/b]: Checking multiple conditions with elif. Python Code: if number > 0: print('Positive') elif number == 0: print('Zero') else: print('Negative')\n\n[b]Explanation[/b]: This code checks if 'number' is positive, zero, or negative and prints the corresponding message."
			},
			"Checkpoint3": {
				"title": "Nested If-Else Statements",
				"info": "Nested If-Else statements allow you to use an if-else block within another if-else block. This is useful for checking a series of conditions that depend on each other.\n\n[b]Example[/b]: Using nested if-else statements. Python Code: if number >= 0: if number == 0: print('Zero') else: print('Positive') else: print('Negative')\n\n[b]Explanation[/b]: This code first checks if 'number' is non-negative, then checks if it is zero or positive, otherwise, it is negative."
			},
			"FinalQuestion": {
				"title": "Testing Understanding of If-Else Statements",
				"info": "Consider a variable 'age' set to 20. Which block of code correctly uses if-else statements to print 'You can vote' if 'age' is 18 or older?",
				"options": "A) if age < 18: print('Too young') else: print('You can vote')\nB) if age > 18: print('You can vote') else: print('Too young')\nC) if age >= 18: print('You can vote') else: print('Too young')\nD) if age == 18: print('You can vote') else: print('Too young')",
				"answer": "C"
			}
		}
	},
	"Level3": {
		"unlocked": false,
		"score": 0,
		"max_score": 0,
		"coins": 0,
		"max_coins": 0,
		"damage_taken": 0,
		"unlocks": "Level4",
		"beaten": false,
		"introduction":"Emerging from the Conditional Caves, Captain Codebeard arrives at Loop Lagoon. Here, he must collect endless floating treasures by mastering the art of Loops. He learns to use For Loops to grab treasures in sequence and While Loops to continue collecting as long as his ship's hold isn't full. The concepts of 'break' and 'continue' become his strategies for escaping whirlpools and navigating through storms, ensuring he can sail through the lagoon efficiently.",
		"checkpoints": {
			"Checkpoint1": {
				"title": "Introduction to For Loops",
				"info": "For loops are used to iterate over a sequence, such as a list, tuple, or string, executing a block of code for each item in the sequence.\n\n[b]Example[/b]: Iterating over a list with a for loop. Python Code: for item in ['apple', 'banana', 'cherry']: print(item)\n\n[b]Explanation[/b]: This for loop prints each item in the list."
			},
			"Checkpoint2": {
				"title": "Understanding While Loops",
				"info": "While loops repeat as long as a specified condition is true, making them useful for when the number of iterations is not known beforehand.\n\n[b]Example[/b]: Using a while loop to count down. Python Code: count = 5 while count > 0: print(count) count -= 1\n\n[b]Explanation[/b]: This while loop counts down from 5 to 1."
			},
			"Checkpoint3": {
				"title": "Break and Continue",
				"info": "The 'break' statement exits a loop prematurely, while 'continue' skips the current iteration and continues with the next iteration.\n\n[b]Example[/b]: Using break to exit a loop. Python Code: for num in range(1, 10): if num == 5: break print(num)\n\n[b]Explanation[/b]: This loop prints numbers 1 to 4 and exits when num equals 5."
			},
			"FinalQuestion": {
				"title": "Testing Understanding of Loops",
				"info": "What will the following code print? Python Code: for i in range(3): for j in range(2): print(i, j)",
				"options": "A) 0 0 1 1 2 2\nB) 0 1 0 1 0 1\nC) 0 0 0 1 1 0 1 1 2 0 2 1\nD) 0 1 1 2 2 3",
				"answer": "C"
			}
		}
	},
	"Level4": {
		"unlocked": false,
		"score": 0,
		"max_score": 0,
		"coins": 0,
		"max_coins": 0,
		"damage_taken": 0,
		"unlocks": "Level5",
		"beaten": false,
		"introduction":"The next destination is the mystic Function Falls, where the waters can replicate any object they touch. Captain Codebeard discovers the power of Functions—magical spells that can perform tasks repeatedly without recasting them. He learns to create Functions to control the waters, Parameters to alter their effects, and Return Values to harness the magic created by the falls. With this knowledge, he can now navigate the falls, using their power to aid his journey.",
		"checkpoints": {
			"Checkpoint1": {
				"title": "Introduction to Functions",
				"info": "Functions are reusable blocks of code that perform a specific task. They can take input, process it, and return a result.\n\n[b]Example[/b]: Defining a function to add two numbers. Python Code: def add(a, b): return a + b\n\n[b]Explanation[/b]: This function takes two parameters, adds them, and returns the result."
			},
			"Checkpoint2": {
				"title": "Parameters and Arguments",
				"info": "Parameters are the names listed in the function's definition. Arguments are the real values passed to the function.\n\n[b]Example[/b]: Passing arguments to a function. Python Code: def greet(name): print(f'Hello, {name}!') greet('Alice')\n\n[b]Explanation[/b]: 'Alice' is the argument passed to the 'name' parameter of the greet function."
			},
			"Checkpoint3": {
				"title": "Return Values",
				"info": "Functions can return values to the part of the program where they were called, using the 'return' statement.\n\n[b]Example[/b]: A function returning the square of a number. Python Code: def square(n): return n * n\n\n[b]Explanation[/b]: This function takes a number 'n', squares it, and returns the result."
			},
			"Checkpoint4": {
				"title": "Understanding Scope and Lifetime of Variables",
				"info": "Scope and lifetime are crucial concepts when working with variables in functions. A variable's scope determines where it can be accessed within your code. Variables defined inside a function (local variables) are accessible only within that function, while variables defined outside (global variables) are accessible anywhere in your code. The lifetime of a variable refers to how long it exists during the program's execution.\n\n[b]Example[/b]: Defining a global and a local variable. Python Code: global_var = 'Accessible anywhere'; def function(): local_var = 'Accessible within this function'; print(local_var); print(global_var);\n\n[b]Explanation[/b]: `global_var` can be accessed anywhere in the code, including inside functions. `local_var` is only accessible within the function it's defined in, trying to access it outside will result in an error."
			},
			"Checkpoint5": {
				"title": "Default Parameters and Keyword Arguments",
				"info": "Default parameters allow functions to be called with fewer arguments than they are defined with, providing default values for missing parameters. Keyword arguments let you pass arguments to functions using the names of the parameters, regardless of their order in the function definition, enhancing code readability and flexibility.\n\n[b]Example[/b]: Utilizing a default parameter and keyword arguments. Python Code: def print_info(name, role='Adventurer'): print(f'{name} is a {role}'); print_info('Alice'); print_info(role='Wizard', name='Bob');\n\n[b]Explanation[/b]: In `print_info`, 'role' has a default value of 'Adventurer'. Calling `print_info('Alice')` uses the default role, whereas `print_info(role='Wizard', name='Bob')` specifies both parameters, demonstrating the use of default parameters and keyword arguments."
			},
			"FinalQuestion": {
				"title": "Testing Understanding of Functions",
				"info": "What will the function 'multiply' return when called with 'multiply(5, 3)'? Python Code: def multiply(a, b=2): return a * b",
				"options": "A) 10\nB) 15\nC) 5\nD) 8",
				"answer": "B"
			}
		}
	},
	"Level5": {
		"unlocked": false,
		"score": 0,
		"max_score": 0,
		"coins": 0,
		"max_coins": 0,
		"damage_taken": 0,
		"unlocks": "Level6",
		"beaten": false,
		"introduction":"Navigating deeper into the unknown, Captain Codebeard discovers the Data Structure Depths, a vast underwater realm where treasures are stored in Lists and Dictionaries. He learns to organize his treasures efficiently, using Lists for his collected items and Dictionaries for mapping the sea. Understanding these complex structures allows him to navigate the depths, finding shortcuts and hidden treasures along the way.",
		"checkpoints": {
			"Checkpoint1": {
				"title": "Introduction to Lists",
				"info": "Lists are ordered collections of items, which can be of different types. They are mutable, allowing for changes after their creation.\n\n[b]Example[/b]: Creating and appending to a list. Python Code: fruits = ['apple', 'banana', 'cherry'] fruits.append('orange')\n\n[b]Explanation[/b]: This code demonstrates creating a list and adding a new item to it."
			},
			"Checkpoint2": {
				"title": "Introduction to Dictionaries",
				"info": "Dictionaries store data as key-value pairs. They are unordered and can be changed by adding new pairs or changing existing ones.\n\n[b]Example[/b]: Creating and adding to a dictionary. Python Code: user = {'name': 'Alice', 'age': 25} user['city'] = 'London'\n\n[b]Explanation[/b]: Shows creating a dictionary and adding a new key-value pair to it."
			},
			"Checkpoint3": {
				"title": "List Comprehensions",
				"info": "List comprehensions provide a concise way to create lists. Common applications are to make new lists where each element is the result of some operations applied to each member of another sequence or iterable, or to create a subsequence of those elements that satisfy a certain condition.\n\n[b]Example[/b]: Using a list comprehension to create a list of squares. Python Code: squares = [x ** 2 for x in range(10)]\n\n[b]Explanation[b]: This list comprehension iterates through numbers 0 to 9, squaring each number and storing the result in the 'squares' list."
			},
			"Checkpoint4": {
				"title": "Accessing Dictionary Elements",
				"info": "Dictionaries in Python are an unordered collection of data values used to store data values like a map. Unlike other Data Types that hold only a single value as an element, Dictionary holds key:value pair. Key-value is provided in the dictionary to make it more optimized. Each key-value pair in a Dictionary is separated by a colon :, whereas each key is separated by a ‘comma’.\n\n[b]Example[/b]: Accessing elements of a dictionary by keys. Python Code: book = {'title': 'The Great Gatsby', 'author': 'F. Scott Fitzgerald', 'year': 1925} book_title = book['title']\n\n[b]Explanation[b]: Accesses the value associated with the key 'title' in the 'book' dictionary and stores it in 'book_title'."
			},
			"Checkpoint5": {
				"title": "Iterating Over Dictionaries",
				"info": "Iterating over dictionaries using loops allows you to access and manipulate each key-value pair. With two methods, '.keys()' and '.values()', you can iterate over keys, values, or both using the '.items()' method.\n\n[b]Example[/b]: Iterating over a dictionary and printing its items. Python Code: person = {'name': 'Alice', 'age': 30, 'city': 'London'} for key, value in person.items(): print(key, ':', value)\n\n[b]Explanation[b]: This loop iterates through each key-value pair in the 'person' dictionary, printing both the key and its corresponding value."
			},
			"FinalQuestion": {
				"title": "Testing Understanding of Data Structures",
				"info": "Given a list 'numbers = [1, 2, 3]' and a dictionary 'squares = {1: 1, 2: 4, 3: 9}', what will 'numbers.append(4); squares[4] = 16; print(numbers, squares[4])' print?",
				"options": "A) [1, 2, 3] 16\nB) [1, 2, 3, 4] 16\nC) [1, 2, 3, 4] 4\nD) An error occurs",
				"answer": "B"
			}
		}
	},
	"Level6": {
		"unlocked": false,
		"score": 0,
		"max_score": 0,
		"coins": 0,
		"max_coins": 0,
		"damage_taken": 0,
		"unlocks": "Level7",
		"beaten": false,
		"introduction":"Finally, Captain Codebeard reaches the vast OOP Ocean, where he must build his ship using the principles of Object-Oriented Programming. He learns about Classes, the blueprints for creating parts of his ship, and Objects, the actual parts made from those blueprints. Methods become his tools for making the ship's parts work together. Mastering OOP, he constructs a ship capable of sailing the most treacherous seas, leading him to the ultimate treasure—programming mastery.",
		"checkpoints": {
			"Checkpoint1": {
				"title": "Introduction to Classes and Objects",
				"info": "Classes are blueprints for objects, allowing for the creation of data structures that contain data (attributes) and functions (methods).\n\n[b]Example[/b]: Defining a 'Car' class and creating an object. Python Code: class Car: def __init__(self, make, model): self.make = make self.model = model\n\n[b]Explanation[/b]: Demonstrates creating a class and an instance of it."
			},
			"Checkpoint2": {
				"title": "Understanding Methods",
				"info": "Methods are functions defined inside a class and are used to define the behaviors of an object.\n\n[b]Example[/b]: Adding a method to the 'Car' class. Python Code: class Car: def __init__(self, make, model): self.make = make self.model = model def honk(self): print('Beep!')\n\n[b]Explanation[/b]: Shows adding a 'honk' method to the 'Car' class that prints a message."
			},
			"Checkpoint3": {
				"title": "Inheritance in OOP",
				"info": "Inheritance allows new classes to inherit features from existing classes to enhance or modify them. This mechanism simplifies code and promotes reuse.\n\n[b]Example[/b]: Creating a 'Vehicle' class and a 'Car' class that inherits from 'Vehicle'. Python Code: class Vehicle: def __init__(self, category): self.category = category class Car(Vehicle): def __init__(self, make, model): super().__init__('Land') self.make = make self.model = model\n\n[b]Explanation[/b]: The 'Car' class inherits from 'Vehicle', allowing it to use the 'category' attribute. The 'super()' function is used to call the parent class's constructor."
			},
			"Checkpoint4": {
				"title": "Polymorphism in OOP",
				"info": "Polymorphism allows objects of different classes to be treated as objects of a common superclass. It's the ability of different objects to respond, each in their own way, to the same message (or method call).\n\n[b]Example[/b]: Using polymorphism with a 'Vehicle' method. Python Code: class Vehicle: def go(self): print('This vehicle is moving') class Car(Vehicle): def go(self): print('This car is driving') class Boat(Vehicle): def go(self): print('This boat is sailing')\n\n[b]Explanation[/b]: Despite different classes ('Car' and 'Boat') having their own implementation of the 'go' method, they can be used interchangeably where a 'Vehicle' is expected, showcasing polymorphism."
			},
			"Checkpoint5": {
				"title": "Encapsulation in OOP",
				"info": "Encapsulation involves bundling the data (attributes) and methods that operate on the data into a single unit called a class and restricting access to some of the class's components. This is usually done by making attributes or methods private, which means they can't be accessed from outside the class.\n\n[b]Example[/b]: Creating a class with private attributes and public methods. Python Code: class Account: def __init__(self, owner, balance=0): self.__owner = owner self.__balance = balance def deposit(self, amount): self.__balance += amount print(f'Added {amount} to the balance') def get_balance(self): return self.__balance\n\n[b]Explanation[/b]: The 'Account' class has private attributes '__owner' and '__balance' that are not directly accessible from outside. Public methods like 'deposit' and 'get_balance' allow controlled access to these attributes."
			},
			"FinalQuestion": {
				"title": "Testing Understanding of OOP",
				"info": "How do you create a 'Dog' class with a method 'bark' that prints 'Woof' when called?",
				"options": "A) class Dog: def bark(self): print('Woof')\nB) class Dog: def bark: print('Woof')\nC) Dog class: bark() { print('Woof') }\nD) create Dog: def bark: print('Woof')",
				"answer": "A"
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

