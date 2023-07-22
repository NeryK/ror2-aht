; Risk of Rain 2 Artificer ENV Suit toggle
;
; This AutoHotkey v2 script is meant for use with a keyboard & mouse control scheme.
; Pressing the Left Ctrl key once emulates holding the jump key.
; Pressing the Left Ctrl again emulates releasing the jump key.
; Pressing and releasing the actual jump key also releases the emulated jump key.
; Pressing F9 exits the script.
; The jump key defaults to Space and can be customized.
; Caveat:
;   If the player lands without releasing the jump key, the next use of the jump key
;   will not trigger a jump.

#Requires AutoHotkey v2.0
#SingleInstance Force

JumpKey := "Space"

*LControl::
{
	KeyIsDown := GetKeyState(JumpKey)
	If KeyIsDown {
		SendInput("{" JumpKey " Up}")
	} Else {
		SendInput("{" JumpKey " Down}")
	}
}

*F9::Exitapp
