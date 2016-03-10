::add vagrant user and switch autologin to it
net user vagrant vagrant /add
net localgroup administrators vagrant /add
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultUserName /t REG_SZ /d vagrant /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultPassword /t REG_SZ /d vagrant /f

::disable windows update
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v AUOptions /t REG_DWORD /d 00000001 /f

::install Powershell 4.0 (required due to incompatibility between chocolately and Powershell 2.0) and restart
powershell -c "((new-object net.webclient).DownloadFile('https://download.microsoft.com/download/3/D/6/3D61D262-8549-4769-A660-230B67E15B25/Windows6.1-KB2819745-x86-MultiPkg.msu', 'C:\Users\IEUser\Downloads\Windows6.1-KB2819745-x86-MultiPkg.msu'))"
echo ATTENTION: THIS MAY TAKE SOME WHILE...
wusa C:\Users\IEUser\Downloads\Windows6.1-KB2819745-x86-MultiPkg.msu /quiet
