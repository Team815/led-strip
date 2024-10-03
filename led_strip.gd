class_name LedStrip
extends HBoxContainer


func set_length(length: int) -> void:
	while get_child_count() < length:
		var led_image: CompressedTexture2D = preload("res://led.svg")
		var led: TextureRect = TextureRect.new()
		led.texture = led_image
		add_child(led)
	while get_child_count() > length:
		var child: TextureRect = get_child(0)
		remove_child(child)
		child.queue_free()


func set_data(led_buffer: LedBuffer) -> void:
	for i: int in min(led_buffer.get_length(), get_child_count()):
		var led_texture: TextureRect = get_child(i)
		led_texture.modulate = led_buffer.get_led(i)


func _on_resized() -> void:
	pivot_offset = size / 2
	scale = Vector2(1, 1) * min(1, get_viewport_rect().size.x / size.x)
