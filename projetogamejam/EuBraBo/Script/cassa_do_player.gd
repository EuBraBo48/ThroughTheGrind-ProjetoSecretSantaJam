extends Node2D

@onready var caminhda: PathFollow2D = $CaminhoDecassa/caminhda
@onready var teclado: Label = $teclado
@onready var icone_do_prota: Sprite2D = $CaminhoDecassa/caminhda/IconeDoProta





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
		caminhda.progress_ratio += 0.024
		$AnimationPlayer.play("rum")
		letraAleatoria = letrasSotiadas.pick_random()
		teclado.text = (letraAleatoria.to_upper())
		await get_tree().create_timer(1).timeout
		$AnimationPlayer.play("ide")
		
	if 	caminhda.progress_ratio == 1:
		await get_tree().create_timer(0.1).timeout
		get_tree().change_scene_to_file("res://EuBraBo/Scenes/Lojinha.tscn")

func _ready() -> void:
	letraAleatoria = letrasSotiadas.pick_random()
	teclado.text = (letraAleatoria.to_upper())
	
