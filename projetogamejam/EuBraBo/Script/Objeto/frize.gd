extends RigidBody2D

@export var health := 100.0
@export var max_health := 100.0

func _ready() -> void:
	var obejeto = ObejetoBasse.new("geloze",10000.0, 20.0,50.0)
	print(obejeto.nome)
	print(obejeto.valor)
	#print(obejeto.health)
	#print(obejeto.max_health)
	
	
