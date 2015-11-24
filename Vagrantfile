# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
VAGRANT_HOST_IP = "192.168.33.10"
VAGRANT_HOST_NAME = "hrorganizer.dev"
VAGRANT_BOX = "centos/7"
VAGRANT_MEMORY = 2048
VAGRANT_CPUS = 2

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define :vagrant do |config|

    config.vm.box = VAGRANT_BOX
    config.vm.network "forwarded_port", guest: 80, host: 8080
    config.vm.network "private_network", ip: VAGRANT_HOST_IP
    config.ssh.forward_agent = true
    config.vm.hostname = VAGRANT_HOST_NAME

    config.vm.provider "virtualbox" do |v|
      # v.gui = true

      v.customize ["modifyvm", :id, "--memory", VAGRANT_MEMORY]
      v.customize ["modifyvm", :id, "--cpus", VAGRANT_CPUS]
      v.customize ["modifyvm", :id, "--ioapic", "on"]
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    end

    config.vm.provision :shell, :path => "shell/bootstrap.sh"
    config.vm.provision :shell, run: "always", :path => "shell/load.sh"

    config.vm.synced_folder "box", "/var/www/", type: "nfs",  mount_options: ['rw', 'vers=3', 'tcp', 'fsc' ,'actimeo=2']

    # config.vm.post_up_message = "The App is up and running on host: " + VAGRANT_HOST_NAME + " with ip: " + VAGRANT_HOST_IP

  end
end
