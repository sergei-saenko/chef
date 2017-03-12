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
	action [:enable, :start]
end


execute 'opened-ports' do
	command '/usr/bin/firewall-cmd --permanent --add-service={ssh,http,https}'
	command '/usr/bin/firewall-cmd --reload'
end