# -*- mode: ruby -*-
# vi: set ft=ruby :

# the nodes will be called middleware.example.net
# and node0.example.net, you can change this here
DOMAIN="hamsalad.com"

# these nodes do not need a lot of RAM, 384 is
# is enough but you can tweak that here
MEMORY=384

# the instances is a hostonly network, this will
# be the prefix to the subnet they use
SUBNET="192.168.2"

Vagrant.configure("2") do |config|

  config.vm.define :splunk do |vmconfig|
    vmconfig.vm.box = "centos_6_3_x86_64"
    #vmconfig.vm.network :public_network, ip: "#{SUBNET}.245", bridge: "en1: Wi-Fi (AirPort)"
    vmconfig.vm.network "forwarded_port", guest: 8000, host: 8000
    vmconfig.vm.hostname = "splunk.#{DOMAIN}"
    vmconfig.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--memory", MEMORY]
    end
    #vmconfig.vm.provision "splunk", type: :shell, path: "scripts/splunk-setup.sh", run: "always"

   end

end
