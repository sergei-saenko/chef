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
  notifies :action, 'service[sshd-reload]', :immediate
end

service 'sshd-reload' do
	case node[:platform]
  when 'redhat', 'centos'
    service_name 'sshd'
    action :reload
  when 'ubuntu', 'debian'
    service_name 'ssh'
    action :restart
  end
end