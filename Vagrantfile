
Vagrant.configure(2) do |config|
  config.vm.box = "http://aka.ms/vagrant-win7-ie11"
  config.vm.communicator = "winrm"

  config.vm.network "forwarded_port", guest: 3389, host: 33389

  config.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024"]
      vb.customize ["modifyvm", :id, "--cpus", "1"]
  end
end