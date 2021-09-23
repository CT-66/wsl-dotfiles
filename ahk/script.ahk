; ^ -> Ctrl
; ! -> Alt
; # -> Win
; + -> Shift


; Always in beginning
SetNumlockState, AlwaysOn
SetCapsLockState, off
return

Capslock::Esc
return

#N::Run "G:\Shyam\Program Files\Nvim\nvim\Neovim\bin\nvim.lnk"
return

; #N::Run "C:\Users\iamsh\AppData\Local\Microsoft\WindowsApps\19282JackieLiu.Notepads-Beta_echhpq9pdbte8\notepads.exe"
; return

;#N::Run "C:\Users\iamsh\AppData\Local\Microsoft\WindowsApps\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\\wt.exe" wsl.exe vim
;return

;^!T::Run "C:\Users\iamsh\AppData\Local\Microsoft\WindowsApps\Microsoft.WindowsTerminal_8wekyb3d8bbwe\wt.exe"
^!T::Run "C:\Users\iamsh\AppData\Local\Microsoft\WindowsApps\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\wt.exe"
return

^!+T::Run "G:\Shyam\Program Files\Alacritty\alacritty.exe"
return

#+C:: Run "C:\Windows\System32\calc.exe"
return

#+V:: Run "G:\Shyam\Program Files\VLC\vlc.exe"
return

; #G:: Run "G:\Shyam"
; return

; #C:: Run "G:\Shyam\Python\Programs\AI\dist\main\iris.exe"
; return

#!g::Run C:\Users\iamsh\AppData\Local\BraveSoftware\Brave-Browser-Beta\Application\brave.exe --incognito https://google.com
return

#+g::Run C:\Users\iamsh\AppData\Local\BraveSoftware\Brave-Browser-Beta\Application\brave.exe --incognito https://google.com
return

#!n::Run C:\Users\iamsh\AppData\Local\BraveSoftware\Brave-Browser-Beta\Application\brave.exe --incognito https://google.com
return

#+n::Run C:\Users\iamsh\AppData\Local\BraveSoftware\Brave-Browser-Beta\Application\brave.exe --incognito https://google.com
return

#!y::Run C:\Users\iamsh\AppData\Local\BraveSoftware\Brave-Browser-Beta\Application\brave.exe https://youtube.com
return

#+y::Run C:\Users\iamsh\AppData\Local\BraveSoftware\Brave-Browser-Beta\Application\brave.exe --incognito https://youtube.com
return

#Enter::Run "C:\Users\iamsh\AppData\Local\Microsoft\WindowsApps\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\wt.exe"
return

#G::Run C:\Users\iamsh\AppData\Local\BraveSoftware\Brave-Browser-Beta\Application\brave.exe --incognito https://google.com
return

:*:g.py:: G:\Shyam\Python\Programs
:*:g.python:: G:\Shyam\Python\Programs
:*:g.cpp:: G:\Shyam\Cpp\Programs
:*:g.c++:: G:\Shyam\Cpp\Programs
:*:g.linux:: G:\Shyam\Linux
:*:linuxpath:: C:\Users\iamsh\AppData\Local\Packages\CanonicalGroupLimited.UbuntuonWindows_79rhkp1fndgsc\LocalState\rootfs\home\username
:*:g.books:: G:\Shyam\Books
:*:g.pybooks:: G:\Shyam\Books\Python
:*:g.pythonbooks:: G:\Shyam\Books\Python
:*:g.c++books:: G:\Shyam\Books\Cpp
:*:g.cppbooks:: G:\Shyam\Books\Cpp
:*:g.recordings:: G:\Shyam\Recordings
:*:g.rec:: G:\Shyam\Recordings
:*:g.gamedev:: G:\Shyam\Game Dev
:*:g.music:: G:\Shyam\Music
:*:g.programfiles:: G:\Shyam\Program Files
:*:g.programs:: G:\Shyam\Program Files
:*:g.pf:: G:\Shyam\Program Files
:*:g.wallpapers:: G:\Shyam\Wallpapers
:*:g.webdev:: G:\Shyam\Web Dev
:*:_ahk:: G:\Shyam\Program Files\AutoHotKey\Scripts
:*:_pypath:: C:\Users\iamsh\AppData\Local\Programs\Python\Python39\python.exe
:*:_psreadline:: C:\Users\iamsh\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt
:*:_local:: C:\Users\iamsh\AppData\Local
:*:_localow:: C:\Users\iamsh\AppData\LocalLow
:*:_roaming:: C:\Users\iamsh\AppData\Roaming
:*:.dots:: https://github.com/CT-66/dotfiles

:*:edit_ahk::G:\Shyam\Program Files\Nvim\nvim\Neovim\bin\nvim.lnk "G:\Shyam\Program Files\AutoHotKey\Scripts\script.ahk"
:*:ahk_script::G:\Shyam\Program Files\Nvim\nvim\Neovim\bin\nvim.lnk "G:\Shyam\Program Files\AutoHotKey\Scripts\script.ahk"
:*:nvim_dots::explorer.exe "C:\Users\iamsh\AppData\Local\nvim\"

; ^#z::
; ^#Left
; return

; ^#c::
; ^#Right
; return

; ^#x::
; ^#Right
; return

!NumpadAdd:: Send {Volume_Up}
!NumpadSub:: Send {Volume_Down}


; #+b::
; Run, bthprops.cpl
; Sleep, 3000
; MouseClick, left, 460, 285
; Sleep, 1000
; Send, {tab}
; Sleep, 100
; Send, {enter}
; Sleep, 1000
; Send, {tab}
; Sleep, 1000
; ; Send, {enter}
; Sleep, 2000
; ; Send,!{Tab}
; Send, !{F4}
; return



; Always in end
#Esc::DllCall("LockWorkStation")
return

#IfWinActive, ahk_class CabinetWClass
Backspace::
   ControlGet renamestatus,Visible,,Edit1,A
   ControlGetFocus focussed, A
   if(renamestatus!=1&&(focussed=”DirectUIHWND3″||focussed=SysTreeView321))
   {
    SendInput {Alt Down}{Up}{Alt Up}
  }else{
      Send {Backspace}
  }
#IfWinActive
