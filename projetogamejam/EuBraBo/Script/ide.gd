extends State
class_name Ide


func enter() -> void:
	print("Estou No Ide")
	player.animation.play("Ide")
	
func exit() -> void:
	print("sairDoStateIde")

func process(delta: float) -> void:
	if Input.is_action_pressed("cima") or Input.is_action_pressed("baixo") or Input.is_action_pressed("esqueda") or Input.is_action_pressed("direita"):
		get_parent().tranziçao(self, "Run")
		
	
func physics_process(delta: float) -> void:
	pass
