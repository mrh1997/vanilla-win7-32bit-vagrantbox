About
-----

This is a Windows 7 (32bit) Box that is derived from the box provided by
microsoft (see http://modern.ie) with a 10 day evaluation licence.

It is adapted to match vagrant's requirements:

 * User is 'vagrant' (password 'vagrant')
 * WinRM is activated (for ``vagrant powershell``)
 * RDP is activated (for ``vagrant rdp``)
 * SSH is activated (for ``vagrant ssh``)
 * chocolately is installed for easy unattended software installations
 * Windows Defender is disabled to avoid unnecessary load



To create this box run the following steps
---------------------------------------------------------------------------------

* Download most up to date image from "https://dev.windows.com/en-us/microsoft-edge/tools/vms/windows/"
* Unpack image
* run ``vagrant box add "IE11 - Win7.box" --name IE11Win7``
* run ``vagrant up`` (wait for timeout message!)
* Start VirtualBox, and do the following operations in the vanillas-win-... guest:
  * open IE click "Network"
  * activate "Network discovery and filesharing" for private networks
  * run ``\\VBOXSRV\vagrant\step1_run_on_guest_as_IEUser_as_admin.cmd`` as admin
  * run ``\\VBOXSRV\vagrant\step2_run_on_guest_as_vagrant_as_admin.cmd`` ad admin
  * activate "Private Network" for private networks
  * optionally update Virtualbox guest additions (Virtualbox Menu "Device / Guest additionas")
* run ``\\VBOXSRV\vagrant\step3_run_on_host.cmd``]