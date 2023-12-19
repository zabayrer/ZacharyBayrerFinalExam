extends Area2D

var speed = 300
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
	print(velocity.length())
	
	
	#move player
	position += velocity * speed * delta
