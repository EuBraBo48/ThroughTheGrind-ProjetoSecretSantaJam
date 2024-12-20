extends Node2D
class_name geradorDeCliente

var levei := 3

var listaClintes: Array = [
	preload("res://EuBraBo/Scenes/Nps/cliente.tscn"),
]

func _ready() -> void:
	ClientesNovos()

func ClientesNovos() -> void:
	levei += 0.6
	for i in range(int(abs(levei))):	
		var escolhe_Cliente = listaClintes[randi() % listaClintes.size()].instantiate()
		escolhe_Cliente.global_position = self.global_position
		add_child(escolhe_Cliente)



func _on_time_clinte_timeout() -> void:
	ClientesNovos()
