::add vagrant user and switch autologin to it
net user vagrant vagrant /add
net localgroup administrators vagrant /add
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultUserName /t REG_SZ /d vagrant /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultPassword /t REG_SZ /d vagrant /f

::restart
shutdown /r /f /t 0
