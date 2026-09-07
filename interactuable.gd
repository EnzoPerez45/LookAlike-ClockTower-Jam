class_name Interactuable extends Area2D

@export var mensaje = "1"
var gameManager 



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	acomodar()
	
func acomodar() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(_delta: float) -> void:
	pass
	
func esInteractuado() -> void:
	print("Test Interactuado")
	
func esInteractuadoCon(objInteractuable: ObjetoInteractuable) -> void:
	print("No creo que esto vaya aquí...")

func _on_mouse_shape_entered(shape_idx: int) -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	 # Cambia el cursor a una manito
	


func _on_mouse_shape_exited(shape_idx: int) -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW) # Vuelve al cursor normal


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		self.esInteractuado()
