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
	
	Vector2(107,-5),
	
	Vector2(107,39),
	
	#Pratileiras
	Vector2(32,4),
	Vector2(33,64),
	Vector2(33,128),
]

var alvorAleatrorio: Vector2

func enter() -> void:
	alvorAleatrorio = AlovosVetor.pick_random()
	
	
func exit() -> void:
	pass


func process(delta: float) -> void:
	_cliente.alvor = Vector2(152,-4)
	
	if _cliente.global_position.distance_to(_cliente.alvor)  <= 2 :
		get_parent().tranziçao(self, "Interagindo")
	
	
func physics_process(delta: float) -> void:
	pass
	
	
