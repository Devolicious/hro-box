ip = "192.168.33.10"

Vagrant.configure(2) do |config|

  config.vm.box = "centos/7"

  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |v|
    v.name = "centos7"
    v.memory = 4096
    v.cpus = 2
    # v.gui = true
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  config.vm.define :centos7 do |centos7|
  end

  config.vm.network "private_network", ip: ip

  config.vm.provision :shell, :path => "shell/bootstrap.sh"
  config.vm.provision :shell, run: "always", :path => "shell/load.sh"

  config.vm.post_up_message = "The App is up and running at http://" + ip

end
