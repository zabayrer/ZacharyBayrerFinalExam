extends Area2D

var speed = 300

@onready var enemyHitSound = $"../enemyHit"
@onready var backgroundMusic = $"../backgroundMusic"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#create velocity, set it to zero
	var velocity = Vector2.ZERO
	
	#change velocity by player's input
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y += -1
	if Input.is_action_pressed("move_left"):
		velocity.x += -1
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	
	#normalize the velocity
	velocity = velocity.normalized()
	
	#move player
	position += velocity * speed * delta


#when you die
func _on_body_entered(body):
	hide()
	enemyHitSound.play()
	backgroundMusic.stop()
