extends Node

var score = 0

@onready var coin_label = %CoinLabel

func add_point():
	score += 1
	print(score, " coin.")
	coin_label.text = "Your coin: " + str(score)
	
