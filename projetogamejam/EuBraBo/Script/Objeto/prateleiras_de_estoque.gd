extends RigidBody2D

@export var _hud: hud
var v := false
@export var _player: Player 

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("interagir") and _hud.NumCaixa <= 10 and v == true:
			_hud.NumCaixa += 1
			_player.seepd -= 5
			print("niondsdi")


func _on_area_2d_body_entered(body) -> void:
	if body.is_in_group("player"):
		v = true
		print("nini")
		


func _on_area_2d_body_exited(body) -> void:
	if body.is_in_group("player"):
		v = false
