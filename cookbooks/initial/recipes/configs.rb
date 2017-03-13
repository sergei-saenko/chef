#
# Cookbook:: initial
# Recipe:: configs
#
# Copyright:: 2017, The Authors, All Rights Reserved.


template '/etc/ssh/sshd_config' do
  source 'sshd_config.erb'
  owner 'root'
  group 'root'
  mode '0600'
end