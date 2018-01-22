; KeyBinder 1.0
; By Ugo Rivard 
; January 20, 2018

; ----Usage----
; Run the script to activate key binding
; Press Esc to terminate script, Pause/Break to "pause"

Global $g_bPaused = False

; Reminder : ^ Ctrl    ! Alt    + Shift    # Win
; Check out Send Key List on the help file to find the other keys. It's a good resource.

HotKeySet("{PAUSE}", "TogglePause")
HotKeySet("{ESC}", "Terminate")
HotKeySet("+#h", "ShowMessage") ; Shift-Win-h

; Bind strings of text to keys by copying the function ShowMessage. Change name and text as needed.
; Then call your function with a keyboard shortcut of your choice using HotKeySet.

HotKeySet("+#a", "AnythingElse") ; Shift-Win-a
HotKeySet("+#l", "LetMe") ; Shift-Win-l

; keep the script running
While 1
    Sleep(100)
WEnd

Func TogglePause()
    $g_bPaused = Not $g_bPaused
    While $g_bPaused
        Sleep(100)
        ToolTip('Script is "Paused"', 0, 0)
    WEnd
    ToolTip("")
EndFunc   ;==>TogglePause

Func Terminate()
    Exit
EndFunc   ;==>Terminate

Func ShowMessage()
    Send ( "Hello World" )
	Return
EndFunc   ;==>ShowMessage

Func AnythingElse()
	Send ( "Is there anything else I can do for you?" )
	Return
EndFunc   ;==>AnythingElse

Func LetMe()
	Send ( "Let me look it up for you, one moment please" )
	Return
EndFunc   ;==>LetMe

