#SingleInstance Force
#NoTrayIcon
#NoEnv
DetectHiddenWindows, On

SysGet, Workspace, MonitorWorkArea
Gui, -Caption +ToolWindow +LastFound +AlwaysOnTop +Border

	Gui, Color, Red

Gui, Font, s14 cWhite
Gui, Add, Text, gFade, Key Click disabled
Gui, Show, Hide
GUI_ID := WinExist()
WinGetPos, GUIX, GUIY, GUIWidth, GUIHeight, ahk_id %GUI_ID%
NewX := WorkSpaceRight-GUIWidth-5
NewY := WorkspaceBottom-GUIHeight-5
Gui, Show, Hide x%NewX% y%NewY%

DllCall("AnimateWindow","UInt",GUI_ID,"Int",100,"UInt","0x00040008") ; TOAST!
Sleep 300
DllCall("AnimateWindow","UInt",GUI_ID,"Int",200,"UInt","0x90000") ; Fade out
Return

Fade:
DllCall("AnimateWindow","UInt",GUI_ID,"Int",500,"UInt","0x90000") ; Fade out when clicked
ExitApp