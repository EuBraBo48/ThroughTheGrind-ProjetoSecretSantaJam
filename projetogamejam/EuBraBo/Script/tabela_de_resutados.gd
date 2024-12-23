extends Control

@onready var infor: Label = $infor

func _ready() -> void:
	infor.text = "Total amount of the day:"+" "+str(global.dinheiro)


func _on_button_pressed() -> void:
	global.DiaGlogo += 1
	global.horario = 7
	get_tree().change_scene_to_file("res://EuBraBo/Scenes/cassa_do_player.tscn")
