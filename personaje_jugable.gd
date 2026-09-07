class_name PersonajeJugable extends Personaje

@onready var sprite: Sprite2D = $Sprite2D
const textura = preload("res://aaa.png")
func _ready() -> void:
	if sprite:
		sprite.texture = textura
		
func _process(_delta: float) -> void:
	if get_global_mouse_position().x > global_position.x:
		sprite.flip_h = false  
	else:
		sprite.flip_h = true  
		
func getSprite() -> Sprite2D:
	return sprite 


	

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var punto_destino = get_global_mouse_position()
		caminar_hacia(punto_destino)
		print("Caminando hacia la posición global: ", punto_destino)
			

func caminar_hacia(punto: Vector2) -> void:
	destino = punto
	moviendo = true
		

	
