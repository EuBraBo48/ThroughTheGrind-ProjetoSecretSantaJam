extends State
class_name persiguindo

@export var _cliente: cliente
var AlovosVetor: Array = [
	#Frizes
	Vector2(207,122),
	Vector2(257,124),
	Vector2(304,124),
	
	#PratileirasDeFruta
	Vector2(152,-4),
	Vector2(120,-3),
	Vector2(121,28),
	Vector2(153,29),
	Vector2(121,59),
	Vector2(153,61),
	
	#Pratileiras
	Vector2(32,4),
	Vector2(33,64),
	Vector2(33,128),
	Vector2(80,5),
	Vector2(80,63),
	Vector2(81,127),
]

var alvorAleatrorio: Vector2

func enter() -> void:
	alvorAleatrorio = AlovosVetor.pick_random()
	
	
func exit() -> void:
	pass


func process(delta: float) -> void:
	_cliente.alvor = alvorAleatrorio
	
	
	
func physics_process(delta: float) -> void:
	pass
	
	
