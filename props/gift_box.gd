extends Node3D

var storedGifts = 0
@onready var giftLabel = $Label3D 
# Called when the node enters the scene tree for the first time.
func _ready():
	updateGiftCountLabel()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func updateGiftCountLabel():
	giftLabel.text = "Gifts: \n" + str(storedGifts)

func _on_area_3d_body_entered(body):
	print("obj entered")
	storedGifts += 1
	updateGiftCountLabel()
	body.queue_free()
	pass # Replace with function body.
