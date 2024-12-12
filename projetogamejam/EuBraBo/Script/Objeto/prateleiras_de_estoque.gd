extends RigidBody2D



func _on_area_2d_body_entered(body) -> void:
	if body.is_in_group("player"):
		print("12121")
