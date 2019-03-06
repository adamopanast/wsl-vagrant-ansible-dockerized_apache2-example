:::description:::

This is a simple tutorial to setup an Ubuntu VM on a WIN10 box, using UBUNTU-WSL (Windows Subsystem for Linux)
Vagrant VM automation tool with VirtualBox as a VM provider, Provision the guest box with Ansible to Update it, 
ensure Docker is deployed and finally start a dockerized apache2 Web Server. 

The reason I got involved to this "weird" project was that running docker on Windows and WSL was really frustrating 
for me for many reasons (so I needed a Linux VM), I used Vagrant for Windows, I managed to successfully setup an 
Ubuntu VM but, guess what, Ansible does not support Windows as a Control Host, so I had to use Ubuntu WSL.

 
:::Prerequisites:::

	- A Windows host with the following SW already installed:
	  - Vagrant for Windows
	  - VirtualBox
	  - Ubuntu WSL

	- Optional: MobaXterm - I use it to create WSL sessions on Windows. In my opinion it is by far the best terminal
	  simulator for Windows. 


:::Steps:::

	1) git clone insde WSL

	2) execute setup_and_configure.sh shell script. Check the comments.

	3) vagrant up

	

