extends Node2D

var player_points = 0
var enemy_points = 0

@onready var enemy_paddle = $enemyPaddle
@onready var player_paddle = $playerPaddle
@onready var ball = $ball as Ball
@onready var ui = $UI as UI

func _on_score_box_left_point_scored():
	enemy_points += 1
	ui.update_enemy_points(enemy_points)
	reset_game_state()

func _on_score_box_right_point_scored():
	player_points += 1
	ui.update_player_points(player_points)
	reset_game_state()

func reset_game_state():
	enemy_paddle.global_position.y = 0
	enemy_paddle.global_position.x = 600
	player_paddle.global_position.y = 0
	player_paddle.global_position.x = -600
	ball.global_position = Vector2.ZERO
	ball.velocity = Vector2.ZERO
	enemy_paddle.linear_velocity = Vector2.ZERO
	player_paddle.linear_velocity = Vector2.ZERO
	ball.start_ball()
