extends CharacterBody2D
var speed = 100
var Gravity = 200
func _physics_process(delta: float) -> void:
	FunctionsOragnizer()
func FunctionsOragnizer() :
	GravityPower()
	Move()
func GravityPower() :
	if not is_on_floor() :
		position.y += Gravity
func Move() :
	if Player.PlayerMove == true :
		if Input.is_action_pressed("ui_right") :
			position.x += speed
		if Input.is_action_pressed("ui_left") :
			position.x -= speed
