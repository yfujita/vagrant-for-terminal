# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  src_dir = 'd:/tmp'
  doc_root = '/vmshare'
  config.omnibus.chef_version = :latest

  # VirtualBox
  config.vm.provider :virtualbox do |virtualbox, override|
    override.vm.box = "centos"
    override.vm.network :private_network, ip: "192.168.33.20"
    override.vm.synced_folder src_dir, doc_root, :mount_options => ["dmode=777", "fmode=777"]
    virtualbox.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
    virtualbox.customize ["modifyvm", :id, "--natdnshostresolver1", "off"]
    # virtualbox.customize ["modifyvm", :id, "--memory", "1024"] 
    # virtualbox.gui = true
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "./cookbooks"
    chef.add_recipe "base"
    chef.add_recipe "timezone"
    chef.add_recipe "profile"
    chef.add_recipe "tmux"
    chef.add_recipe "maven"
  end
end
