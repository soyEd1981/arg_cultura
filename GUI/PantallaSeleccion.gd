extends Control


onready var selector_tipo: OptionButton = $Fondo/SelectorTipo

onready var texto_pensamiento: Label = $Fondo/ContenedorAtributos/TextoPensamiento
onready var texto_vivacidad: Label = $Fondo/ContenedorAtributos/TextoVivacidad
onready var texto_caracter: Label = $Fondo/ContenedorAtributos/TextoCaracter
onready var texto_estrategia: Label = $Fondo/ContenedorAtributos/TextoEstrategia
onready var texto_autenticidad: Label = $Fondo/ContenedorAtributos/TextoAutenticidad


var personalidades: Dictionary = {
	'razonable': {
	},
	'vigilante': {
	},
	'exploradora': {
	},
	'persuasiva': {
	}
}


func _ready() -> void:
	selector_tipo.theme = Theme.new()
	selector_tipo.theme.default_font = DynamicFont.new()
	selector_tipo.theme.default_font.font_data = load("res://assets/Fonts/Cardinal.ttf")
	selector_tipo.theme.default_font.size = 64
	selector_tipo.text = 'Selecciona tu personalidad'


func _on_SelectorTipo_item_selected(index: int) -> void:
	if index == 0:
		personalidades['razonable'] = diccionario_aleatorio(100, 60, 80, 90, 70)
		texto_pensamiento.text = 'Pensamiento: ' + str(personalidades['razonable']['pensamiento'])
		texto_vivacidad.text = 'Vivacidad: ' + str(personalidades['razonable']['vivacidad'])
		texto_caracter.text = 'Caracter: ' + str(personalidades['razonable']['caracter'])
		texto_estrategia.text = 'Estrategia: ' + str(personalidades['razonable']['estrategia'])
		texto_autenticidad.text = 'Autenticidad: ' + str(personalidades['razonable']['autenticidad'])
	elif index == 1:
		personalidades['vigilante'] = diccionario_aleatorio(90, 100, 80, 70, 80)
		texto_pensamiento.text = 'Pensamiento: ' + str(personalidades['vigilante']['pensamiento'])
		texto_vivacidad.text = 'Vivacidad: ' + str(personalidades['vigilante']['vivacidad'])
		texto_caracter.text = 'Caracter: ' + str(personalidades['vigilante']['caracter'])
		texto_estrategia.text = 'Estrategia: ' + str(personalidades['vigilante']['estrategia'])
		texto_autenticidad.text = 'Autenticidad: ' + str(personalidades['vigilante']['autenticidad'])
	elif index == 2:
		personalidades['exploradora'] = diccionario_aleatorio(80, 100, 100, 60, 90)
		texto_pensamiento.text = 'Pensamiento: ' + str(personalidades['exploradora']['pensamiento'])
		texto_vivacidad.text = 'Vivacidad: ' + str(personalidades['exploradora']['vivacidad'])
		texto_caracter.text = 'Caracter: ' + str(personalidades['exploradora']['caracter'])
		texto_estrategia.text = 'Estrategia: ' + str(personalidades['exploradora']['estrategia'])
		texto_autenticidad.text = 'Autenticidad: ' + str(personalidades['exploradora']['autenticidad'])
	elif index == 3:
		personalidades['persuasiva'] = diccionario_aleatorio(100, 60, 100, 100, 60)
		texto_pensamiento.text = 'Pensamiento: ' + str(personalidades['persuasiva']['pensamiento'])
		texto_vivacidad.text = 'Vivacidad: ' + str(personalidades['persuasiva']['vivacidad'])
		texto_caracter.text = 'Caracter: ' + str(personalidades['persuasiva']['caracter'])
		texto_estrategia.text = 'Estrategia: ' + str(personalidades['persuasiva']['estrategia'])
		texto_autenticidad.text = 'Autenticidad: ' + str(personalidades['persuasiva']['autenticidad'])


func diccionario_aleatorio(pensamiento: int, vivacidad: int, caracter: int, estrategia: int,
							autenticidad: int) -> Dictionary:
	randomize()
	pensamiento = randi() % pensamiento
	vivacidad = randi() % vivacidad
	caracter = randi() % caracter
	estrategia = randi() % estrategia
	autenticidad = randi() % autenticidad
	var diccionario = {
		'pensamiento': pensamiento, 'vivacidad': vivacidad, 
		'caracter': caracter, 'estrategia': estrategia, 
		'autenticidad': autenticidad
	}
	return diccionario












