#include <GuiIPAddress.au3>

Opt("MustDeclareVars", 1)

_Main()

Func _Main()
	Local $msg, $hgui, $setrange, $button, $hIPAddress
	
	$hgui = GUICreate("IP Address Control Create Example", 300, 150)
	
	$hIPAddress = _GUICtrlIpAddressCreate ($hgui, 10, 10, 125, 30, $WS_THICKFRAME)
	
	$setrange = GUICtrlCreateButton("Set Range", 10, 50, 80, 20)
	
	$button = GUICtrlCreateButton("Exit", 100, 100, 100, 25)
	_GUICtrlIpAddressSet ($hIPAddress, "24.168.2.128")
	GUISetState(@SW_SHOW)
	
	While 1
		$msg = GUIGetMsg()
		
		Select
			
			Case $msg = $GUI_EVENT_CLOSE Or $msg = $button
				Exit
			Case $msg = $setrange
				_GUICtrlIpAddressSetRange ($hIPAddress, 0, 198, 200)
		EndSelect
	WEnd
EndFunc   ;==>_Main
