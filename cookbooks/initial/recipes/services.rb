#
# Cookbook:: initial
# Recipe:: services
#
# Copyright:: 2017, The Authors, All Rights Reserved.


service 'Firewalld' do
	service_name 'firewalld'
	action [:enable, :start]
end


execute 'opened-ports' do
	command '/usr/bin/firewall-cmd --permanent --add-service={ssh,http,https} && /usr/bin/firewall-cmd --reload'
end


service 'ssh-server' do
	case node[:platform]
  when 'redhat', 'centos'
    service_name 'sshd'
  when 'ubuntu', 'debian'
    service_name 'ssh'
  end
  action [:enable, :start]
end