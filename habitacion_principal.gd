extends Node2D

@onready var cuadro_texto: Panel = $UI/CuadroTexto
@onready var texto_label: RichTextLabel = $UI/CuadroTexto/RichTextLabel
@onready var barra_estres: ProgressBar = $UI/BarraEstres
# Referencia a la jugadora (puedes ajustar el nodo cuando agregues su Sprite)
@onready var jugadora: CharacterBody2D = $Jugadora
@export var velocidad_movimiento: float = 200.0
var destino_jugadora: Vector2
var moviendo_jugadora: bool = false
var nivel_estres: float = 10.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cuadro_texto.hide()
	#actualizar_barra_estres()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
		
		
func _unhandled_input(event: InputEvent) -> void:
	if cuadro_texto.visible:
		if (event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT) or event.is_action_pressed("ui_accept"):
			cuadro_texto.hide()
			# Evita que el clic se propague a otros objetos al cerrar el mensaje
			get_viewport().set_input_as_handled()
			return
		

func mostrar_mensaje(mensaje: String) -> void:
	texto_label.text = mensaje
	cuadro_texto.show()
	

func aplicar_efecto_panico() -> void:
	# Agrega un pequeño desplazamiento aleatorio a la posición del mouse
	var offset = Vector2(randf_range(-3, 3), randf_range(-3, 3))
	get_viewport().warp_mouse(get_viewport().get_mouse_position() + offset)
	
