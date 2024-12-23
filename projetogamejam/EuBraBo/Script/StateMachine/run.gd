extends State
class_name Run

func enter() -> void:
	print("Entrei no Run")
	player.animation.play("Run")
	
func exit() -> void:
	print("SairDoStateRun")

func process(delta: float) -> void:
	if not  Input.is_action_pressed("baixo") and not Input.is_action_pressed("cima") and not Input.is_action_pressed("esqueda") and not Input.is_action_pressed("direita") :
		get_parent().tranziçao(self, "Ide")
		
func physics_process(delta: float) -> void:
	pass
