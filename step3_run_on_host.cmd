vagrant package --output vanilla-win7-32bit.box --vagrantfile Vagrantfile
vagrant box add --force --name vanilla-win7-32bit vanilla-win7-32bit.box
vagrant destroy --force
del vanilla-win7-32bit.box