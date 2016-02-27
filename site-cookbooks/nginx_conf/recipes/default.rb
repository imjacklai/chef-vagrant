#
# Cookbook Name:: nginx_conf
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template "nginx.conf" do
  path "#{node['nginx']['dir']}/sites-enabled/nginx.conf"
  source "nginx.conf.erb"
  mode "0644"
end
