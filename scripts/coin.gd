extends Area2D

@onready var game_manager = %GameManager
@onready var anim_player = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	game_manager.add_point()
	anim_player.play("pickup")
