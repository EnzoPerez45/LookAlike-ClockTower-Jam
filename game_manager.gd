extends Node

var escenarioActual
const PERSONAJE_ESCENA = preload("res://personaje_jugable.tscn")
var personaje
var objetoSeleccionadoActual: ObjetoInteractuable
var gameEvents: Dictionary


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	personaje = PERSONAJE_ESCENA.instantiate()
	get_tree().current_scene.add_child(personaje)
	gameEvents = {"puerta1":true}
	
func cambiarEscena(escena: String) -> void:
	if get_tree() != null:
		get_tree().change_scene_to_file(escena)
	else:
		push_error("GameManager no está en el SceneTree activo.")
	
func seleccionarItem(obj: ObjetoInteractuable, textura_cursor: Texture2D) -> void:
	objetoSeleccionadoActual = obj
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass	
func mostrarDialogo(mensaje : String) -> void:
	print(mensaje)
	
func aumentar_estres(estresAumentado : float) -> void:
	pass
