extends Node2D
class_name geradorDeCliente

var levei := 4
@onready var gerador: geradorDeCliente = $"."


var listaClintes: Array = [
	preload("res://EuBraBo/Scenes/Nps/cliente.tscn"),

]

func _ready() -> void:
	ClientesNovos()

func ClientesNovos() -> void:
	levei += 0.6
	for i in range(int(abs(levei))):	
		var escolhe_Cliente = listaClintes[randi() % listaClintes.size()].instantiate()
		#escolhe_Cliente.listaDeAnimaca.pick
		add_child(escolhe_Cliente)



func _on_time_clinte_timeout() -> void:
	ClientesNovos()
