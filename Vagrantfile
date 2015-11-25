# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
VAGRANT_HOST_IP = "192.168.33.10"
VAGRANT_HOST_NAME = "hrorganizer.dev"
VAGRANT_BOX = "centos/7"
VAGRANT_MEMORY = 2048
VAGRANT_CPUS = 2

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.ssh.forward_agent = true
  config.vm.box = VAGRANT_BOX
  config.vm.hostname = VAGRANT_HOST_NAME
  config.vm.network "private_network", ip: VAGRANT_HOST_IP
  config.vm.network "forwarded_port", guest: 1080, host: 1080
  config.vm.synced_folder "box", "/var/www/html", type: "nfs",  mount_options: ['rw', 'vers=3', 'tcp', 'fsc' ,'actimeo=2']

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", VAGRANT_MEMORY]
    v.customize ["modifyvm", :id, "--cpus", VAGRANT_CPUS]
    v.customize ["modifyvm", :id, "--ioapic", "on"]
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    v.customize ["modifyvm", :id, "--nictype1", "virtio"]

    v.check_guest_additions = false
    v.functional_vboxsf     = false
    v.gui = true
  end

  config.vm.provision :shell, :path => "shell/bootstrap.sh"
  config.vm.provision :shell, run: "always", :path => "shell/load.sh"
end
