extends CharacterBody2D
var left:int=0
var right:int=0
var up:int=0
var down:int=0

func _physics_process(delta):
	var direction = Input.get_vector("left","right","up","down")
	velocity = direction * 600
	move_and_slide()
	attack()
	
	
	

func attack():
	if not Input.is_action_just_pressed("attack"):
		%MeleeC.disabled
	if Input.is_action_just_pressed("left"):
		left=1
		right=0
		up=0
		down=0
	if Input.is_action_just_pressed("right"):
		left=0
		right=1
		up=0
		down=0
	if Input.is_action_just_pressed("up"):
		left=0
		right=0
		up=1
		down=0
	if Input.is_action_just_pressed("down"):
		left=0
		right=0
		up=0
		down=1
	if left==1 and Input.is_action_just_pressed("attack"):
		%AnimationPlayer.play("right_attack")
	elif right==1 and Input.is_action_just_pressed("attack"):
		%AnimationPlayer.play("left_attack")
	elif up==1 and Input.is_action_just_pressed("attack"):
		%AnimationPlayer.play("up_attack")
	elif down==1 and Input.is_action_just_pressed("attack"):
		%AnimationPlayer.play("down_attack")
	
	
		
	
