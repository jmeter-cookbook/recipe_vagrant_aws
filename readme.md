###This assumes you have installed Vagrant >= 1.3.5 on your system and that you have installed the vagrant-aws plugin

Steps to run
1. Clone project
2. cd into cloned directory
3. Run the following command 
	git submodule init && git submodule update
4. Edit Vagrantfile and supply your AWS credentials
5. Run the following command
	vagrant up vm1 --provider=aws
