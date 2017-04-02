#
# Cookbook:: mariadb
# Recipe:: phpmyadmin
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'phpmyadmin' do
  case node[:platform]
  when 'redhat', 'centos'
    package_name 'phpmyadmin'
	  when 'ubuntu', 'debian'
    package_name 'phpmyadmin'
	  end
end

