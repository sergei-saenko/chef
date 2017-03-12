#
# Cookbook:: initial
# Recipe:: firewall
#
# Copyright:: 2017, The Authors, All Rights Reserved.


package 'Firewall' do
  case node[:platform]
  when 'redhat', 'centos'
    package_name 'firewalld'
  when 'ubuntu', 'debian'
    package_name 'firewalld'
  end
end


service 'Firewalld' do
	service_name 'firewalld'
	action [:enabled, :start]
end


execute 'ssh-port' do
	command '/usr/bin/firewall-cmd --permanent --add-service=ssh'
	command '/usr/bin/firewall-cmd --reload'
end