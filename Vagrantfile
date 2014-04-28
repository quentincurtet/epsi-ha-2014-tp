# -*- mode: ruby -*-
# # vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "coreos"
  config.vm.box_url = "http://storage.core-os.net/coreos/amd64-usr/alpha/coreos_production_vagrant.box"

  config.vm.provider :virtualbox do |vb, override|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  config.vm.network :forwarded_port, guest: 80, host: 5080, auto_correct: true
  config.vm.network :forwarded_port, guest: 4080, host: 4080, auto_correct: true
  config.vm.network :forwarded_port, guest: 5432, host: 5432, auto_correct: true

  config.vm.provision "shell", privileged: false, path: "provision.sh"
  

end
