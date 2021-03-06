#
# Cookbook:: mariadb
# Recipe:: :base
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'mariadb' do
  case node[:platform]
  when 'redhat', 'centos'
    package_name 'mariadb-server'
	  when 'ubuntu', 'debian'
    package_name 'mariadb-server'
	  end
end

service 'mariadb-service' do
  case node[:platform]
  when 'redhat', 'centos'
    service_name 'mariadb'
    action [:enable, :start]
	when 'ubuntu', 'debian'
    service_name 'mariadb'
    action [:enable, :start]
	end
end



execute 'opened-ports' do
	command '/usr/bin/firewall-cmd --add-service=mysql --permanent && /usr/bin/firewall-cmd --reload'
end

