extends State
class_name persiguindo

@export var _cliente: cliente
var AlovosVetor: Array = [
	#Frizes
	Vector2(208,124),
	Vector2(257,124),
	Vector2(304,124),
	
	#PratileirasDeFruta
	Vector2(153,74),
	Vector2(105,76),

	
	#Pratileiras
	Vector2(14,46),
	Vector2(15,124),
	
]

var alvorAleatrorio: Vector2

func enter() -> void:
	alvorAleatrorio = AlovosVetor.pick_random()
	
	
func exit() -> void:
	pass


func process(delta: float) -> void:
	_cliente.alvor = alvorAleatrorio
	
	if _cliente.global_position.distance_to(_cliente.alvor)  <= 5 :
		await get_tree().create_timer(5).timeout
		get_parent().tranziçao(self, "Interagindo")
	
	
func physics_process(delta: float) -> void:
	pass
	
	
