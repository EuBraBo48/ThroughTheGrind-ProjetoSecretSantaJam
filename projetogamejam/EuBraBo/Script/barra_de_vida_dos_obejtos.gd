extends Control
class_name BarraDeVida

@onready var texture_roterba: TextureProgressBar = $TextureRoterba

@export var objeto: RigidBody2D
@onready var Objeto = objeto


func _process(delta: float) -> void:
	Barra_De_vida()

func Barra_De_vida() -> void:
	if Objeto:
		texture_roterba.value = lerp(texture_roterba.value, Objeto.health * 100 / Objeto.max_health, 0.3)
