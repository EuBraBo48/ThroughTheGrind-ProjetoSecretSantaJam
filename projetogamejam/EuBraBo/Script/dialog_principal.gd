extends CanvasLayer

const DIALOG_SCREEEN: PackedScene = preload("res://EuBraBo/Scenes/dialog.tscn")

var DialogPrincipalDia1: Dictionary = {
	0: {"dialog": "Kkokkko... Son... Kokkko...", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png" 
	},
	1: {"dialog": "Mom! Mom! You’re having another coughing fit! My God, I need to get a job to pay for your surgery!", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	2: {"dialog": "My dear... Kokkko... You don’t have to... But if you do work, take your phone. I’ll call you during your lunch break, my son.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	},
	3: {"dialog": "(crying) Yes, mom...", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	}
}

var DialogPrincipalDia2: Dictionary = {
	0: {"dialog": "Mom, I got the job. It’s not great, but it’ll help.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	1: {"dialog": "I’m so proud of you, my son. Don’t forget, health comes first.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	},
	2: {"dialog": "I’ll manage, mom. I’d do anything for you.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	}
}

var DialogPrincipalDia3: Dictionary = {
	0: {"dialog": "Today was tough, but I think I’m getting the hang of it.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	1: {"dialog": "You’ve always been strong, Ethan. Just don’t forget you’re human. Rest a little.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	},
	2: {"dialog": "I promise I’ll try. Good night, mom.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	}
}

var DialogPrincipalDia4: Dictionary = {
	0: {"dialog": "The boss pushed me hard today. He’s never satisfied.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	1: {"dialog": "Ethan, don’t let him bring you down. You have a goal, and it’s bigger than any boss.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	},
	2: {"dialog": "You always know what to say, mom.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	}
}

var DialogPrincipalDia5: Dictionary = {
	0: {"dialog": "The store was chaos. I barely had time for lunch.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	1: {"dialog": "Are you eating properly? There’s no point in overworking if you’ll get sick.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	},
	2: {"dialog": "I am, mom. Don’t worry.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	}
}

var DialogPrincipalDia6: Dictionary = {
	0: {"dialog": "Just one more day, mom. I’m so close.", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	1: {"dialog": "You’re already a hero to me, Ethan. No matter what happens.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	}
}

var DialogPrincipalDia7: Dictionary = {
	0: {"dialog": "Mom, I did it! The money for the surgery is secured!", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/icones/iconeDoProta.png"
	},
	1: {"dialog": "My angel, I knew you could do it. Now we can finally breathe.", 
		"title": "Helen", 
		"icone": "res://EuBraBo/Sprites/icones/MamaeIcone.png"
	}
}




@export_category("Objects")
@export var hud: CanvasLayer = null


func _ready() -> void:
	dialogDiario()
	
	
func dialogDiario() -> void:
	if global.DiaGlogo == 1:
		print("dia1")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogPrincipalDia1
		get_tree().paused = true
		hud.add_child(dialog)
		
	elif global.DiaGlogo == 2:
		print("dia 2")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogPrincipalDia2
		get_tree().paused = true
		hud.add_child(dialog)
		
	elif global.DiaGlogo == 3:
		print("dia 3")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogPrincipalDia3
		get_tree().paused = true
		hud.add_child(dialog)
		
	elif global.DiaGlogo == 4:
		print("dia 4")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogPrincipalDia4
		get_tree().paused = true
		hud.add_child(dialog)
		
	elif global.DiaGlogo == 5:
		print("dia 5")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogPrincipalDia5
		get_tree().paused = true
		hud.add_child(dialog)
		
	elif global.DiaGlogo == 6:
		print("dia 6")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogPrincipalDia6
		get_tree().paused = true
		hud.add_child(dialog)
		
	else:
		print("dia 7")
		var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
		dialog.data = DialogPrincipalDia7
		get_tree().paused = true
		hud.add_child(dialog)
	
