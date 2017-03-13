#
# Cookbook:: initial
# Recipe:: configs
#
# Copyright:: 2017, The Authors, All Rights Reserved.



file '/etc/banner' do
  content '<html>This is a placeholder for the home page.</html>'
  mode '0755'
  owner 'web_admin'
  group 'web_admin'
end
