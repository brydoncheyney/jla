# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "fgrehm/centos-6-64-lxc"

  config.ssh.insert_key = false

  if Vagrant.has_plugin?('vagrant_cachier')
    config.cache.scope = :box
  end

  config.vm.define 'jla' do |instance|
    if Vagrant.has_plugin?('vagrant-hosts')
      instance.vm.provision :hosts    
    end

    instance.vm.synced_folder 'html', '/vagrant_data/jla/html' 

    instance.vm.provision 'ansible' do |ansible|
      ansible.playbook = 'provisioning/playbook.yml'
      ansible.sudo = true
      ansible.groups = {
        'webservers' => ['jla']
      }
    end
  end

end
