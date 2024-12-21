extends CharacterBody2D
class_name Player

@export var _stateManine: stateMachine = null
@onready var sprite__player: Sprite2D = $BonecoTemplate2
@onready var animation: AnimationPlayer = $Animation
@export var _hud: hud

var v := false
var obejte
var cliente_



@export var seepd: float = 100

func _ready() -> void:
	_stateManine.stateMacne(self)
	obejte = obejte

func _process(delta: float) -> void:
	if obejte:
		print(obejte.health)
		
	if obejte:	
		print("swswswsws")
		if Input.is_action_just_pressed("interagir") and obejte.health < 100 and v == true  and _hud.NumCaixa >= 1:
			obejte.health += 20
			global.dinheiro += 2
			_hud.NumCaixa -= 1
			seepd += 5
			
	move_and_slide()
	verify_direction()
	monventPlaye()

	if cliente_:
		if Input.is_action_just_pressed("interagir") and cliente_.d == true:
			cliente_.sla()
			cliente_.d = false
			


func verify_direction() -> void:
	if velocity.x > 0:
		sprite__player.flip_h = false
	elif velocity.x < 0:
		sprite__player.flip_h = true
		

func monventPlaye() -> void:
	var input_vecto = Vector2 (
		Input.get_axis("esqueda","direita"),
		Input.get_axis("cima","baixo")
	).normalized()
	velocity = input_vecto * seepd
	

func _on_area_2d_body_entered(body) -> void:
	if body.is_in_group("objetes"):
		obejte = body 
		v = true
		
	if body.is_in_group("Clientes"):
		cliente_ = body
		


func _on_area_2d_body_exited(body) -> void:
	if body.is_in_group("objetes"):
		obejte = null
		v = false
	if body.is_in_group("Clientes"):
		cliente_ = null
