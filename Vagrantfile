
Vagrant.configure("2") do |config|
	config.vm.provider "virtualbox" do |v|
		v.customize [ "modifyvm", :id, "--uartmode1", "disconnected" ]
	end
	config.vm.box = "ubuntu/xenial64"
	config.vm.synced_folder '.', '/vagrant', disabled: true
	config.vm.define "web00" do |vm1|
		vm1.vm.network "private_network", ip: "192.168.33.20"
	end
	config.vm.provision "ansible" do |ansible|
		ansible.verbose = "v"
		ansible.playbook = "provisioning/main.yml"
		ansible.extra_vars = {
    			ansible_python_interpreter: "/usr/bin/python3",
   		}
	end
end	
