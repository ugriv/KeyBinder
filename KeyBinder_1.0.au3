; KeyBinder 1.0
; By Ugo Rivard 
; Copyright 2018

    ;This program is free software: you can redistribute it and/or modify
    ;it under the terms of the GNU General Public License as published by
    ;the Free Software Foundation, either version 3 of the License, or
    ;(at your option) any later version.

    ;This program is distributed in the hope that it will be useful,
    ;but WITHOUT ANY WARRANTY; without even the implied warranty of
    ;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    ;GNU General Public License for more details.

    ;You should have received a copy of the GNU General Public License
    ;along with this program.  If not, see <http://www.gnu.org/licenses/>.

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

