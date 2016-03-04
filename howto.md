Folgende Schritte wurden auf der VM durchgeführt
* User "Vagrant" (mit Passwort "vagrant" angelegt) und die anderen Benutzer gelöscht.
* Deutsche Tastatur eingestellt
* Hintergrundbild auf standard gesetzt
* \\VBOXSVR\vagrant (dauerhaft) nach "V:" gemappt
* firewall komplett abgeschaltet
* disabled windows search service except Start-Menu
* "windows defender" abgeschaltet
* Ausführung von powershell-dateien im Adminmode erlaubt:
  "Set-ExecutionPolicy -ExecutionPolicy Unrestricted"
* enable-winrm.ps1 im adminmode ausgeführt (siehe
  https://gist.github.com/uchagani/48d25871e7f306f1f8af)
* winrm service auf Automatisch (ohne "delayed"!) gesetzt
* Den Vagrant Benutzer automatisch einloggen (siehe
  "http://pcsupport.about.com/od/windows7/ht/auto-logon-windows-7.htm")

Dann muss Box gepackt werden:
* vagrant package --output windows7-32bit.box --vagrantfile Vagrantfile
* vagrant box add vagrant box add --name windows7-32bit windows7-32bit.box