Vagrant.configure(2) do |config|

  config.vm.box = "centos/7"
  config.vm.box_url = "https://atlas.hashicorp.com/centos/7"
  config.vm.network "private_network", ip: "192.168.33.10"

  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--memory", 4096]
    vb.customize ["modifyvm", :id, "--]
    vb.customize ["modifyvm", :id, "--name", "vagrant-symfony"]
    # vb.customize ["modifyvm", :id, "--gui", "true"]
  end

  #config.vm.synced_folder ".", "/var", id: "vagrant-root", nfs: true, create: true
  #config.vm.synced_folder ".", "/var/www/html", create: true

  config.vm.provision :shell, :path => "shell/bootstrap.sh"
  config.vm.provision :shell, run: "always", :path => "shell/load.sh"
end
