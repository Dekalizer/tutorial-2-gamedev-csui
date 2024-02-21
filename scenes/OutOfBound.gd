extends Area2D

func _on_OutOfBound_body_entered(body: RigidBody2D):
	if (body.name == "GreenShip"):
		print("Player is out of bound!")
