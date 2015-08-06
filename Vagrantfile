# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "chef/centos-6.5"

  config.vm.provision "shell", inline: <<-SHELL
    yum install -y ruby ruby-devel rubygems tree
    yum groupinstall -y 'Development Tools'
    gem install fpm --no-ri --no-rdoc
  SHELL
end
