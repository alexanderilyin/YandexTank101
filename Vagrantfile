# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "yandex" do |yandex|
    yandex.vm.box = "ubuntu-1310-i386-virtualbox-puppet"
    yandex.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-1310-i386-virtualbox-puppet.box"
    yandex.vm.hostname = "yandex.example.com"
    yandex.vm.network :forwarded_port, guest: 22, host: 1111
    # yandex.vm.network "forwarded_port", guest: 8080, host: 8080
    yandex.vm.network "private_network", ip: "172.16.0.10"
    # config.vm.network "public_network"
    # config.ssh.forward_agent = true
    # config.vm.synced_folder "../data", "/vagrant_data"
    # config.vm.provider "virtualbox" do |vb|
    #   vb.gui = true
    #   vb.customize ["modifyvm", :id, "--memory", "1024"]
    # end
    yandex.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "manifests"
      puppet.manifest_file  = "yandex.pp"
      puppet.module_path  = "modules"
    end
  end

  config.vm.define "frontend" do |frontend|
    frontend.vm.box = "ubuntu-1310-i386-virtualbox-puppet"
    frontend.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-1310-i386-virtualbox-puppet.box"
    frontend.vm.hostname = "frontend.example.com"
    frontend.vm.network :forwarded_port, guest: 22, host: 3333
    frontend.vm.network "private_network", ip: "172.16.0.20"
    # config.vm.network "public_network"
    # config.ssh.forward_agent = true
    # config.vm.synced_folder "../data", "/vagrant_data"
    # config.vm.provider "virtualbox" do |vb|
    #   vb.gui = true
    #   vb.customize ["modifyvm", :id, "--memory", "1024"]
    # end
    frontend.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "manifests"
      puppet.manifest_file  = "frontend.pp"
      puppet.module_path  = "modules"
    end
  end


end
