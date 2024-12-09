extends CharacterBody2D
class_name Player

@export var _stateManine: stateMachine = null
@onready var sprite__player: Sprite2D = $BonecoTemplate2
@onready var animation: AnimationPlayer = $Animation


@export var seepd: float = 100

func _ready() -> void:
	_stateManine.stateMacne(self)


func _process(delta: float) -> void:
	move_and_slide()
	verify_direction()
	monventPlaye()


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
	
