class_name GameManager extends Node

var escenarioActual
var personaje
var objetoSeleccionadoActual: ObjetoInteractuable

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	personaje = PersonajeJugable.new()
	
func seleccionarItem(obj: ObjetoInteractuable, textura_cursor: Texture2D) -> void:
	objetoSeleccionadoActual = obj
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass	
func mostrarDialogo(mensaje : String) -> void:
	print(mensaje)
	
func aumentar_estres(estresAumentado : float) -> void:
	pass
