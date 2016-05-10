::remove IEUser
net user IEUser /delete
del /s /q /f C:\Users\IEUser

::no password timeout restriction
net accounts /maxpwage:unlimited

::switch to german keyboard layout for administrator
control intl.cpl,, /f:"\\VBOXSVR\vagrant\other\switch_keyboard_locale.xml"

::map 'V:' for vagrant user
net use V: \\VBOXSRV\vagrant /user:vagrant vagrant /p:yes
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLinkedConnections /t REG_DWORD /d 1 /f

::disable windows defender
sc config WinDefend start= disabled
sc stop WinDefend

::Allow execution of powershell-files in Adminmode
powershell -c Set-ExecutionPolicy -ExecutionPolicy Unrestricted

::aktivate der winrm
powershell -c \\VBOXSRV\vagrant\other\enable-winrm.ps1

::setup SSH
sc stop OpenSSHd
mkdir C:\Users\vagrant\.ssh
copy \\VBOXSRV\vagrant\ssh\config\* "C:\Program Files\OpenSSH\etc"
copy \\VBOXSRV\vagrant\ssh\keys\vagrant.pub C:\Users\vagrant\.ssh\authorized_keys
sc start OpenSSHd

::rename computer zu testen
wmic computersystem where caption='%COMPUTERNAME%' rename 'VANILLA-WIN7-32BIT'

:: install 'choco' (see https://chocolatey.org)
powershell -c iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
del "C:/ProgramData/chocolatey/choco.exe.old"

::reboot
shutdown /r /f /t 0