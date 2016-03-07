This Box is focused on
----------------------

* vagrant-conform Windows 7 32bit
* Basesystem without any additional Software
* german Keyboard layout


To create this box run the following steps
---------------------------------------------------------------------------------

* Download most up to date image from "https://dev.windows.com/en-us/microsoft-edge/tools/vms/windows/"
* Unpack image
* run ``vagrant box add "IE11 - Win7.box" --name IE11Win7``
* run ``vagrant up``
* Start VirtualBox, and do the following operations in the vanillas-win-... guest:
  * open IE click "Network"
  * activate "Network discovery and filesharing" for private networks
  * run ``\\VBOXSRV\vagrant\step1_run_on_guest_as_IEUser_as_admin.cmd`` as admin
  * run ``\\VBOXSRV\vagrant\step2_run_on_guest_as_vagrant_as_admin.cmd`` ad admin
  * optionally update Virtualbox guest additions (Virtualbox Menu "Device / Guest additionas")
* run ``\\VBOXSRV\vagrant\step3_run_on_host.cmd``]