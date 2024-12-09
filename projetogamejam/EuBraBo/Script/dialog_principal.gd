extends CanvasLayer

const DIALOG_SCREEEN: PackedScene = preload("res://EuBraBo/Scenes/dialog.tscn")

var DialogPrincipalDia1: Dictionary = {
	0: {"dialog": "Kkokkko... Son... Kokkko...", 
		"title": "Helen", 
		"icone": "res://CoisaEmGeral/icon.svg"
	},
	1: {"dialog": "Mom! Mom! You’re having another coughing fit! My God, I need to get a job to pay for your surgery!", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/iconeDoProta.png"
	},
	2: {"dialog": "My dear... Kokkko... You don’t have to... But if you do work, take your phone. I’ll call you during your lunch break, my son.", 
		"title": "Helen", 
		"icone": "res://CoisaEmGeral/icon.svg"
	},
	3: {"dialog": "(crying) Yes, mom...", 
		"title": "Ethan", 
		"icone": "res://EuBraBo/Sprites/iconeDoProta.png"
	}
}

@export_category("Objects")
@export var hud: CanvasLayer = null


func _ready() -> void:
	var dialog: DialogScren = DIALOG_SCREEEN.instantiate()
	dialog.data = DialogPrincipalDia1
	hud.add_child(dialog)
