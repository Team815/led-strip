extends Node


var buffer = LedBuffer.create(10)


func _ready():
	%LedStrip.set_length(buffer.get_length())


func _process(delta):
	%LedStrip.set_data(buffer)
