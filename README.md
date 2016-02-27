# chef-vagrant

## Usage

Clone and edit files:
* data_bags/users/deployer.json.example
* site-cookbooks/mysql_database/recipes/default.rb.example

Initialize the remote node, also update chef and set node name:
```
$ knife zero bootstrap vagrant@192.168.33.10 --bootstrap-install-command "curl chef.sh | sudo bash" --no-converge -N vagrant
```

Run Chef-Client to update for node:
```
$ knife zero converge "name:vagrant"
```

Then everything is done!
