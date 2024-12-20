extends State
class_name interagindo

@export var _cliente: cliente


func enter() -> void:
	_cliente.alvor = Vector2(347,135)
	
func exit() -> void:
	pass

func process(delta: float) -> void:
	pass
	
func physics_process(delta: float) -> void:
	pass
