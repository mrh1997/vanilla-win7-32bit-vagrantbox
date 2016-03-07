::remove IEUser
net user IEUser /delete

::switch to german keyboard layout for administrator
control intl.cpl,, /f:"\\VBOXSVR\vagrant\other\switch_keyboard_locale.xml"

::map 'V:' for vagrant user
net use V: \\VBOXSRV\vagrant /user:vagrant vagrant /p:yes
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLinkedConnections /t REG_DWORD /d 1 /f

::disable windows defender
sc config WinDefend start= disabled
sc stop WinDefend

::Ausführung von powershell-dateien im Adminmode erlauben
powershell -c Set-ExecutionPolicy -ExecutionPolicy Unrestricted

::aktivieren der winrm
powershell -c \\VBOXSRV\vagrant\other\enable-winrm.ps1

::rename computer ### zu testen
wmic computersystem where caption='%COMPUTERNAME%' rename 'VANILLA-WIN7-32BIT'

::reboot
shutdown /r /f /t 0