extends CanvasLayer


const DIALOG_SCREEEN: PackedScene = preload("res://EuBraBo/Scenes/dialog.tscn")
@export_category("Objects")
@export var hud: CanvasLayer = null


# 💼 Boss Dialogues
var DialogChefeDia1: Dictionary = {
	0: {
		"dialog": "So, you’re the guy who asked about the job, right?",
		"title": "Mr. Carter",
		"icone": "res://EuBraBo/Sprites/icones/PatraoIcone.png"
	},
	1: {
		"dialog": "Ye... Yes... My name’s Ethan. I wanted to know how the work is.",
		"title": "Ethan",
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	2: {
		"dialog": "I’ll only say this once. You open every day except Sundays. Every day I’ll call to check how the supermarket’s doing. Here, you clean, assist customers, and restock products. Got it?",
		"title": "Mr. Carter",
		"icone": "res://EuBraBo/Sprites/icones/PatraoIcone.png"
	},
	3: {
		"dialog": "Yes, sir.",
		"title": "Ethan",
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	4: {
		"dialog": "Here’s the key.",
		"title": "Mr. Carter",
		"icone": "res://EuBraBo/Sprites/icones/PatraoIcone.png"
	}
}

var DialogChefeDia2: Dictionary = {
	0: {
		"dialog": "Ethan, how was yesterday’s performance? Did you assist all the customers?",
		"title": "Mr. Carter",
		"icone": "res://EuBraBo/Sprites/icones/PatraoIcone.png"
	},
	1: {
		"dialog": "Yes, sir. But the customer flow is more than I expected...",
		"title": "Ethan",
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	2: {
		"dialog": "Welcome to retail. Work harder, or the customers will leave.",
		"title": "Mr. Carter",
		"icone": "res://EuBraBo/Sprites/icones/PatraoIcone.png"
	}
}

var DialogChefeDia3: Dictionary = {
	0: {
		"dialog": "Is the store clean? Restocking at the end of the day is essential. Remember that.",
		"title": "Mr. Carter",
		"icone": "res://EuBraBo/Sprites/icones/PatraoIcone.png"
	},
	1: {
		"dialog": "Everything’s under control, sir.",
		"title": "Ethan",
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	2: {
		"dialog": "\"Under control\" doesn’t pay the bills. Show results.",
		"title": "Mr. Carter",
		"icone": "res://EuBraBo/Sprites/icones/PatraoIcone.png"
	}
}

var DialogChefeDia4: Dictionary = {
	0: {
		"dialog": "I got a complaint about a delay in service. What happened?",
		"title": "Mr. Carter",
		"icone": "res://EuBraBo/Sprites/icones/PatraoIcone.png"
	},
	1: {
		"dialog": "Sorry, sir. I was alone and...",
		"title": "Ethan",
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	2: {
		"dialog": "No excuses. Fix it or you’re out of here.",
		"title": "Mr. Carter",
		"icone": "res://EuBraBo/Sprites/icones/PatraoIcone.png"
	}
}

var DialogChefeDia5: Dictionary = {
	0: {
		"dialog": "Sales aren’t as good as I expected. What’s missing?",
		"title": "Mr. Carter",
		"icone": "res://EuBraBo/Sprites/icones/PatraoIcone.png"
	},
	1: {
		"dialog": "I’m doing my best, but some products run out too fast...",
		"title": "Ethan",
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	2: {
		"dialog": "Then restock faster. No products, no profit.",
		"title": "Mr. Carter",
		"icone": "res://EuBraBo/Sprites/icones/PatraoIcone.png"
	}
}

var DialogChefeDia6: Dictionary = {
	0: {
		"dialog": "Tomorrow’s the last day of the week. I expect better results.",
		"title": "Mr. Carter",
		"icone": "res://EuBraBo/Sprites/icones/PatraoIcone.png"
	},
	1: {
		"dialog": "I’ll do my best, sir.",
		"title": "Ethan",
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	2: {
		"dialog": "Best? I expect the impossible.",
		"title": "Mr. Carter",
		"icone": "res://EuBraBo/Sprites/icones/PatraoIcone.png"
	}
}

var DialogChefeDia7: Dictionary = {
	0: {
		"dialog": "Today’s the big day, Ethan. Prove you’re valuable... or a waste of time.",
		"title": "Mr. Carter",
		"icone": "res://EuBraBo/Sprites/icones/PatraoIcone.png"
	},
	1: {
		"dialog": "I won’t disappoint you, sir.",
		"title": "Ethan",
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	2: {
		"dialog": "We’ll see.",
		"title": "Mr. Carter",
		"icone": "res://EuBraBo/Sprites/icones/PatraoIcone.png"
	}
}



# 📞 Mother’s Calls
var DialogMaeDia1: Dictionary = {
	0: {"dialog": "Ethan, how are you? It’s been a while since we talked properly.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	},
	1: {"dialog": "I’m hanging in there, mom. Things are tough, but I’m managing.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	2: {"dialog": "Remember, no matter what, you can always count on me.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	}
}

var DialogMaeDia2: Dictionary = {
	0: {"dialog": "Hi, my son! How was your first day at work?", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	},
	1: {"dialog": "It was exhausting, mom, but I think I’ll get used to it. How are you?", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	2: {"dialog": "I’m better just knowing you’re doing so much for me. Don’t forget to eat properly, okay?", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	},
	3: {"dialog": "Will do, mom. Love you.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	4: {"dialog": "Love you too, my angel.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	}
}

var DialogMaeDia3: Dictionary = {
	0: {"dialog": "Ethan, are you taking care of yourself? You sound tired.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	},
	1: {"dialog": "I am, mom... It’s just a lot to handle at work.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	2: {"dialog": "Remember, you’re not alone. We’re in this together.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	},
	3: {"dialog": "Thanks, mom. Your words give me strength.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	}
}

var DialogMaeDia4: Dictionary = {
	0: {"dialog": "My son, just calling to remind you to rest. There’s no point in working so hard if you get sick.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	},
	1: {"dialog": "I know, mom. But sometimes it feels like it’ll never work out...", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	2: {"dialog": "It always does, Ethan. One step at a time. You’ll see.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	}
}

var DialogMaeDia5: Dictionary = {
	0: {"dialog": "Ethan, I dreamed of us after all this is over. We were both smiling.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	},
	1: {"dialog": "I want that dream to come true, mom. I’ll do my best.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	2: {"dialog": "I believe in you, my son. Always.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	}
}

var DialogMaeDia6: Dictionary = {
	0: {"dialog": "Ethan, did you know you’re my biggest pride? No matter what happens, you’re already a hero to me.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	},
	1: {"dialog": "Mom, you don’t know how much that means to me. I’ll keep fighting.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	}
}

var DialogMaeDia7: Dictionary = {
	0: {"dialog": "Ethan, today’s a big day, isn’t it?", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	},
	1: {"dialog": "It is, mom. Today could be the day I secure enough for your surgery.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	2: {"dialog": "No matter the outcome, you’ve already done more than any son would. Thank you for being so special.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	}
}


# 🏪 Store Opening Dialogues

var DialogAberturaLojaDia1: Dictionary = {
	0: {"dialog": "Ugh, another day... This job is already draining me.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	}
}

var DialogAberturaLojaDia2: Dictionary = {
	0: {"dialog": "Ugh, another day... This job is already draining me.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	}
}

var DialogAberturaLojaDia3: Dictionary = {
	0: {"dialog": "Is all this effort worth it? This place feels like it’s sucking the life out of me...", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	}
}

var DialogAberturaLojaDia4: Dictionary = {
	0: {"dialog": "I think I’m starting to understand why no one wants to work here.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	}
}

var DialogAberturaLojaDia5: Dictionary = {
	0: {"dialog": "I can’t give up. I need the money for the surgery. But it’s getting harder...", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	}
}

var DialogAberturaLojaDia6: Dictionary = {
	0: {"dialog": "One less day. I just hope I can hold on till the end.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	}
}

var DialogAberturaLojaDia7: Dictionary = {
	0: {"dialog": "The final day... It’s all or nothing.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	}
}


func _ready() -> void:
	dialogDiarioAbri()

func _physics_process(delta: float) -> void:
	dialogLigacaoMae()
	dialogLigacaoChef()
	


func dialogDiarioAbri() -> void:
	if global.DiaGlogo == 1:
		print("dia1")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogChefeDia1
		get_tree().paused = true
		hud.add_child(dialog)
		
	elif global.DiaGlogo == 2:
		print("dia 2")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogAberturaLojaDia2
		get_tree().paused = true
		hud.add_child(dialog)
		
	elif global.DiaGlogo == 3:
		print("dia 3")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogAberturaLojaDia3
		get_tree().paused = true
		hud.add_child(dialog)
		
	elif global.DiaGlogo == 4:
		print("dia 4")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogAberturaLojaDia4
		get_tree().paused = true
		hud.add_child(dialog)
		
	elif global.DiaGlogo == 5:
		print("dia 5")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogAberturaLojaDia5
		get_tree().paused = true
		hud.add_child(dialog)
		
	elif global.DiaGlogo == 6:
		print("dia 6")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogAberturaLojaDia6
		get_tree().paused = true
		hud.add_child(dialog)
		
	else:
		print("dia 7")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogAberturaLojaDia7
		get_tree().paused = true
		hud.add_child(dialog)
	

func dialogLigacaoMae() -> void:
	if global.DiaGlogo == 1 and global.horario == 13:
		print("dia1")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogMaeDia1
		get_tree().paused = true
		hud.add_child(dialog)
		global.horario += 1
		
	elif global.DiaGlogo == 2  and global.horario == 13:
		print("dia 2")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogMaeDia2
		get_tree().paused = true
		hud.add_child(dialog)
		global.horario += 1
		
	elif global.DiaGlogo == 3 and global.horario == 13:
		print("dia 3")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogMaeDia3
		get_tree().paused = true
		hud.add_child(dialog)
		global.horario += 1
		
		
	elif global.DiaGlogo == 4 and global.horario == 13:
		print("dia 4")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogMaeDia4
		get_tree().paused = true
		hud.add_child(dialog)
		global.horario += 1
		
	elif global.DiaGlogo == 5 and global.horario == 13:
		print("dia 5")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogMaeDia5
		get_tree().paused = true
		hud.add_child(dialog)
		global.horario += 1
		
	elif global.DiaGlogo == 6 and global.horario == 13 :
		print("dia 6")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogMaeDia6
		get_tree().paused = true
		hud.add_child(dialog)
		global.horario += 1
		
	elif global.DiaGlogo == 6 and global.horario == 13:
		print("dia 7")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogMaeDia7
		get_tree().paused = true
		hud.add_child(dialog)
		global.horario += 1



func dialogLigacaoChef() -> void:
	if global.DiaGlogo == 1 and global.horario == 20:
		global.horario += 1
		get_tree().change_scene_to_file("res://EuBraBo/Scenes/tabela_de_resutados.tscn")
		
	elif global.DiaGlogo == 2  and global.horario == 20:
		print("dia 2")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogChefeDia2
		get_tree().paused = true
		hud.add_child(dialog)
		global.horario += 1
		
	elif global.DiaGlogo == 3 and global.horario == 20:
		print("dia 3")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogChefeDia3
		get_tree().paused = true
		hud.add_child(dialog)
		global.horario += 1
		
		
	elif global.DiaGlogo == 4 and global.horario == 20:
		print("dia 4")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogChefeDia4
		get_tree().paused = true
		hud.add_child(dialog)
		global.horario += 1
		
	elif global.DiaGlogo == 5 and global.horario == 20:
		print("dia 5")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogChefeDia5
		get_tree().paused = true
		hud.add_child(dialog)
		global.horario += 1
		
	elif global.DiaGlogo == 6 and global.horario == 20 :
		print("dia 6")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogChefeDia6
		get_tree().paused = true
		hud.add_child(dialog)
		global.horario += 1
		
	elif global.DiaGlogo == 6 and global.horario == 20:
		print("dia 7")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogChefeDia7
		get_tree().paused = true
		hud.add_child(dialog)
		global.horario += 1
