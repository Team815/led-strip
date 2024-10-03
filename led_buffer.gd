class_name LedBuffer
extends RefCounted


var _leds: Array[Color] = []


static func create(length: int) -> LedBuffer:
	var led_buffer: LedBuffer = LedBuffer.new()
	led_buffer._leds.resize(length)
	led_buffer._leds.fill(Color.BLACK)
	return led_buffer


func get_length() -> int:
	return _leds.size()


func get_led(index: int) -> Color:
	return _leds[index]


func get_red(index: int) -> int:
	return _leds[index].r * 255


func get_green(index: int) -> int:
	return _leds[index].g * 255


func get_blue(index: int) -> int:
	return _leds[index].b * 255


func set_led(index: int, color: Color) -> void:
	_leds[index] = color


func set_rgb(index: int, r: int, g: int, b: int) -> void:
	_leds[index] = Color(r / 255.0, g / 255.0, b / 255.0)


func set_hsv(index: int, h: int, s: int, v: int) -> void:
	_leds[index] = Color.from_hsv(h / 180.0, s / 255.0, v / 255.0)
