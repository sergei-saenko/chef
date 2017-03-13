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

package 'Figlet' do
      package_name 'firewalld'
end

