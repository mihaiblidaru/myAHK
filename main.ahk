; Set Lock keys permanently
SetNumlockState, AlwaysOn
SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff
return

;
; Caracteres especiales
;

<^>!a::SendInput {U+103}
<^>!+a::SendInput {U+102}

<^>!q::SendInput {U+00E2}
<^>!+q::SendInput {U+00C2}

<^>!i::SendInput {U+00EE}
<^>!+i::SendInput {U+00CE}

<^>!s::SendInput {U+219}
<^>!+s::SendInput {U+218}

<^>!t::SendInput {U+21B}
<^>!+t::SendInput {U+21A}

; Window always on top
^Space::Winset, AlwaysOnTop, , A

:*:migmail::
SendInput, mihaiblidaru14@gmail.com
return

:*:insd::
FormatTime, CurrentDateTime,, dd/MM/yyyy HH:mm
SendInput %CurrentDateTime%
return

; Show snipping tool on Windows
PrintScreen::Send #+s

; Controles de volumen con el raton, cuando el puntero esta sobre la barra de 
; tareas, con la rueda del ratón el volumen, y con el clic central el mute.
; Con varias pantallas solo funciona en una de ellas.
#If MouseIsOver("ahk_class Shell_TrayWnd")
    WheelUp::Send {Volume_Up}
    WheelDown::Send {Volume_Down}
    Mbutton::Send {Volume_Mute}

    MouseIsOver(WinTitle) {
        MouseGetPos,,, Win
        return WinExist(WinTitle . " ahk_id " . Win)
    }
return