extends Node3D

var interface: XRInterface
var peer = ENetMultiplayerPeer.new()

@onready var mainmenu = $CanvasLayer/MainMenu
@onready var adressentry = $CanvasLayer/MainMenu/MarginContainer/VBoxContainer/AdressEntry

const player = preload("res://player.tscn")
const PORT = 5000
var enet_peer = ENetMultiplayerPeer.new()

func _ready() -> void:
	interface = XRServer.find_interface("OpenXR")
	if interface and interface.is_initialized():
		get_viewport().use_xr = true


func _on_joinbutton_pressed():
	pass

func _on_hostbutton_pressed():
	mainmenu.hide()
	enet_peer.create_server(PORT)
	multiplayer.multiplayer_peer = enet_peer
	add_player(multiplayer.get_unique_id())

func add_player(peer_id):
	var player = player.instantiate()
	player.name = str(peer_id)
	add_child(player)
