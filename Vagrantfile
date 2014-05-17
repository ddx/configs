# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.network :forwarded_port, guest: 80, host: 8000
  # config.vm.network :private_network, ip: "192.168.33.10"
  config.vm.network :public_network

  # config.vm.synced_folder "./", "/vagrant", {:mount_options => ['dmode=777','fmode=777'], :owner => "www-data", :group => "www-data"}

  # Set Virtualbox VM name
  config.vm.provider :virtualbox do |vb|
    vb.name = "vb_vm_name"
  end

  # Set Vagrant VM name (by default it is called 'default')
  config.vm.define :vagrant_vm_name do |t|
  end

  # Set VM hostname
  config.vm.hostname="vm_hostname"
  
  # Provision via bootstrap shell script
  config.vm.provision :shell, :path => "bootstrap.sh"

end
