extends Node2D

@onready var caminhda: PathFollow2D = $CaminhoDecassa/caminhda
@onready var teclado: Label = $teclado




var letraAleatoria: String = ""
var letrasSotiadas: Array =  ["a", "b", "c", "d", "e", "f", "g"]
var texto:String = ""

func _input(event: InputEvent) -> void:
	if event is InputEventKey and event.is_echo() == false and event.is_pressed():
		var letra = OS.get_keycode_string(event.keycode)
		var alfabeto = "abcdefghijklmnopqrstuvwxyz"
		if letra.to_lower() in alfabeto:
			#print(letra)
			tecla(letra.to_lower())
			texto = texto + letra 
			print(texto)

func tecla(letra) -> void:
	if letra == letraAleatoria:
		caminhda.progress_ratio += 0.087
		$CaminhoDecassa/caminhda/Icon/CPUParticles2D.emitting = true
		letraAleatoria = letrasSotiadas.pick_random()
		teclado.text = (letraAleatoria.to_upper())
	if 	caminhda.progress_ratio == 1:
		get_tree().change_scene_to_file("res://CoisaEmGeral/Lojinha.tscn")

func _ready() -> void:
	letraAleatoria = letrasSotiadas.pick_random()
	teclado.text = (letraAleatoria.to_upper())
