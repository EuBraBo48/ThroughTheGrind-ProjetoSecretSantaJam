extends CharacterBody2D
class_name cliente


@export var alvor: Vector2
@export var _stateManine: stateMachine = null
@onready var navigation: NavigationAgent2D = $Navigation
@onready var animate: AnimatedSprite2D = $Animate

var obejte
var v = false

var d := false


func _ready() -> void:
	_stateManine.stateMacne(self)


func _process(delta: float) -> void:
	diretonVericty()
	#alvor = Vector2(207,122)
	#alvor = owner.get_global_mouse_position()
	var diton = to_local(navigation.get_next_path_position()).normalized()
	velocity = diton * 50
	move_and_slide()


func mackpanht() -> void:
	navigation.target_position = alvor


func _on_timer_navigation_timeout() -> void:
	mackpanht()


func diretonVericty() -> void:
	if velocity.x > 0:
		animate.flip_h = false
	elif velocity.x < 0:
		animate.flip_h = true


func _on_area_2d_body_entered(body) -> void:
	if body.is_in_group("objetes"):
		obejte = body 
		v = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("objetes"):
		obejte = null
		v = false


func sla():
	global.dinheiro += 20
	alvor = Vector2(133,159)
	await get_tree().create_timer(3).timeout
	d = false
	queue_free()
	
