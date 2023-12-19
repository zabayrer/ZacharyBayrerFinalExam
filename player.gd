extends Area2D

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
		velocity.y += -1
	if Input.is_action_pressed("move_right"):
		velocity.y += 1
	
	#normalize the velocity
	velocity = velocity.normalized()
	
	#move player
	position += velocity * delta