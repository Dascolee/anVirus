#include <SQLite.au3>
#include <SQLite.dll.au3>
_SQLite_Startup ()
If @error > 0 Then
	MsgBox(16, "SQLite Error", "SQLite.dll Can't be Loaded!")
	Exit - 1
EndIf
_SQLite_Shutdown ()