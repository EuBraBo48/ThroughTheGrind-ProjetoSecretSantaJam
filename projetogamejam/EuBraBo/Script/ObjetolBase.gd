class_name ObejetoBasse

var nome: String = ""
var valor: float = 0.0
var health := 100.0
var max_health := 100.0

func _init(_nome, _valor, _max_health, _health) -> void:
	nome = _nome
	valor = _valor
	health = _health
	max_health  = _max_health
	
