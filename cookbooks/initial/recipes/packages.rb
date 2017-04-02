#
# Cookbook:: initial
# Recipe:: packages
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

package 'Figlet' do
     case node[:platform]
  when 'redhat', 'centos'
    package_name 'figlet'
  when 'ubuntu', 'debian'
    package_name 'figlet'
  end
end

package 'ssh-server' do
  package_name 'openssh-server'
end

#yum_package 'yum-utils'