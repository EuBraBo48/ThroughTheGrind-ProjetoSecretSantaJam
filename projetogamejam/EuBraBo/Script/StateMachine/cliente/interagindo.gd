extends State
class_name interagindo

@export var _cliente: cliente

var lsitaDedano: Array = [
	10,20,30,49,50,2,60,2,12,34
]


func enter() -> void:
	if owner.obejte != null and owner.obejte.health > 0:
		var danoAleatorio = lsitaDedano.pick_random()
		print(danoAleatorio)
		owner.obejte.health -= danoAleatorio
		owner.alvor = Vector2(347,135)
		$"../../TimeAteendimento".start()
		owner.d = true
		
	else:
		global.dinheiro -= 10
		owner.alvor = Vector2(133,159)
		await get_tree().create_timer(2).timeout
		owner.queue_free()
		
	
func exit() -> void:
	pass

func process(delta: float) -> void:
	if _cliente.global_position.distance_to(Vector2(347,135))  <= 2:
		owner.d = true
	
func physics_process(delta: float) -> void:
	pass


func _on_time_ateendimento_timeout() -> void:
	$"../../TimeAteendimento".stop()
	global.dinheiro -= 5
	owner.alvor = Vector2(133,159)
	await get_tree().create_timer(3).timeout
	owner.queue_free()
	owner.d = false
