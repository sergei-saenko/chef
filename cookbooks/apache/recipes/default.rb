#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'apache' do
  case node[:platform]
  when 'redhat','centos'
    package_name 'httpd'
	version '2.4.6-45'
  when 'ubuntu','debian'
    package_name 'apache2'
	version '2.4.7'
  end
end

service 'apache-daemon' do
  ase node[:platform]
  when 'redhat','centos'
    service_name 'httpd'
    action [:enable, :start]
	when 'ubuntu','debian'
    service_name 'apache2'
    action [:enable, :start]
	end
end

