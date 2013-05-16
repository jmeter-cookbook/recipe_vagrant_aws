Vagrant.configure("2") do |config|
  config.vm.box = "precise64"

  config.vm.provider :aws do |aws|
    aws.access_key_id = "YOUR AWS KEY ID"
    aws.secret_access_key = "YOUR AWS SECRET KEY"
    aws.keypair_name = "YOUR KEYPAIR NAME"
    aws.ssh_private_key_path = "PATH TO YOUR PRIVATE KEY"    
    aws.region = "YOUR AWS REGION"
    aws.ami = "ami-7747d01e"
    aws.ssh_username = "ubuntu"
  end

  # define multiple VMs.
  config.vm.define :vm1
  config.vm.define :vm2
  config.vm.define :vm3
  config.vm.define :vm4

  config.vm.synced_folder "testplans", "testplans"

  # provision with shell
  config.vm.provision :shell,
    :inline => "apt-get update && apt-get -q -y install puppet"    

  # provision with puppet
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.module_path = "modules"
    puppet.manifest_file  = "main.pp"
  end

end
