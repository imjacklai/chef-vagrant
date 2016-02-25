local_mode true
chef_repo_path File.expand_path('../' , __FILE__)
cookbook_path [
  File.expand_path('../cookbooks' , __FILE__),
  File.expand_path('../site-cookbooks' , __FILE__)
]

knife[:ssh_attribute] = "knife_zero.host"
knife[:ssh_user] = "vagrant"
knife[:use_sudo] = true
# knife[:identity_file] = "PATH_TO_YOUR_PRIVATE_KEY"

knife[:before_bootstrap] = "berks vendor cookbooks"
knife[:before_converge]  = "berks vendor cookbooks"
