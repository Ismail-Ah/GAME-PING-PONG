extends Area2D
signal win1
signal win2
var dir=Vector2(7,2)
func _ready():
	pass
func _process(delta):
	position.x+=dir.x
	position.y+=dir.y
	if position.x>1028:
		emit_signal("win2")
	if position.x<-5:
		emit_signal("win1")
func _on_Area2D_body_entered(body):
	if body.name=="A2":
		dir.x*=-1
	if body.name=="A1":
		dir.x*=-1
	if body.name=="Body1":
		dir.y*=-1
	if body.name=="Body2":
		dir.y*=-1


func _on_Area2D_win1():
	position.x=512
	position.y=300
	dir.x*=-1

func _on_Area2D_win2():
	_on_Area2D_win1()
