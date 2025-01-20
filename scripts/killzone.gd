extends Area2D

@onready var timer: Timer = $Timer
@onready var dark_canvas : ColorRect = get_tree().root.get_node("Game/UI/DarkCanvas")


func _on_body_entered(body: Node2D) -> void:
	print("You died!")
	Engine.time_scale = 0.5 # 减缓世界流速
	body.get_node("CollisionShape2D").queue_free() # 移除玩家碰撞体
	var player : CharacterBody2D = body
	player.velocity.y = -100 # 让玩家小跳一下
	var dark_anim_player : AnimationPlayer = dark_canvas.get_node("AnimationPlayer")
	dark_anim_player.play("close_canvas")
	timer.start() # 开始计时器

func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0 # 恢复世界流速
	get_tree().reload_current_scene() # 重启游戏
