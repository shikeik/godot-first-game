extends Area2D


func _on_body_entered(body: Node2D) -> void:
	print("fly!~~")
	var player : CharacterBody2D = body
	player.velocity.y = -610
	
