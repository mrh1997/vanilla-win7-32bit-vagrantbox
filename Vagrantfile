Vagrant.configure(2) do |config|
  config.vm.box = "http://aka.ms/vagrant-win7-ie11"
  config.vm.hostname = "WINDOWS7-32BIT"
  config.vm.communicator = "winrm"

  config.vm.provider "virtualbox" do |vb|
      vb.name = "Windows 7 (32bit)"
      vb.customize ["modifyvm", :id, "--memory", "2048"]
      vb.customize ["modifyvm", :id, "--cpus", "2"]
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
      vb.customize ["setextradata", "global", "GUI/SuppressMessages", "all" ]
  end
end