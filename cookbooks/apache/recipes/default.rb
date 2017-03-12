#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'apache' do
  case node[:platform]
  when 'redhat', 'centos'
    package_name 'httpd'
	  when 'ubuntu', 'debian'
    package_name 'apache2'
	  end
end

service 'apache-daemon' do
  case node[:platform]
  when 'redhat', 'centos'
    service_name 'httpd'
    action [:enable, :start]
	when 'ubuntu', 'debian'
    service_name 'apache2'
    action [:enable, :start]
	end
end

