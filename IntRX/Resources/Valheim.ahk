﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force
SetKeyDelay,40,20
SendMode, input
Blockinput, On

KeyList := "Shift|w|a|s|d|e|f|r|Space"

Loop, Parse, KeyList, |
{
	Send % "{" A_Loopfield " Up}"
}

SendInput, {F5 Down}
Sleep, 15
SendInput, {F5 up}
Sleep, 15


SendInput, {Enter Down}
Sleep, 15
SendInput, {Enter up}
Sleep, 15


Loop, read, cmd.txt
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        SendInput, {%A_LoopField% down}
		Sleep, 15
		SendInput, {%A_LoopField% up}
		Sleep, 15
    }
}


SendInput, {Shift Up}
Sleep, 20

Sleep, 15
SendInput, {Enter Down}
Sleep, 15
SendInput, {Enter up}
Sleep, 20


SendInput, {F5 Down}
Sleep, 15
SendInput, {F5 up}
Sleep, 15

return