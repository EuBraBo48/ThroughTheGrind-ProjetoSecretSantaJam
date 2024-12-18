extends Control
class_name hud

@export var texture_button:  VBoxContainer
@export var dinheiro: Label 
@export var dia: Label 
@export var horario: Label

@export var tarefa_1: Label 
@export var tarefa_2: Label
@export var tarefa_3: Label 

@export var infor_caixa: Label 

var NumCaixa: int = 0

func _ready() -> void:
	pass


func _physics_process(delta: float) -> void:
	troca_de_infor()


func _on_texture_button_pressed() -> void:	
	if visible == true:
		texture_button.hide()
		visible = !visible
	else:
		texture_button.show()
		visible = !visible


func _on_timer_timeout() -> void:
	if global.horario <= 20:
		global.horario += 1


func troca_de_infor() -> void:
	dia.text = str(global.DiaGlogo)
	dinheiro.text = "R$" + str(global.dinheiro)
	horario.text = str(global.horario) + ":" + "00"
	
	tarefa_1.text = "atenderClieintes"+"("+str(global.TafezasPendentesAtender) +"/"+ str(global.TafezasFeitasAtender)+")"
	tarefa_2.text = "Abastecer"+"("+str(global.TafezasPendentesEstoque) +"/"+ str(global.TafezasFeitasEstoque)+")"
	tarefa_3.text = "Sujeiras"+"("+str(global.TafezasPendentesSegeiras) +"/"+ str(global.TafezasFeitasSugeiras)+")"
	
	infor_caixa.text = "x"+str(NumCaixa)
	
