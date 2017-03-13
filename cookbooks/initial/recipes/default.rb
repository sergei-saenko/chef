#
# Cookbook:: initial
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'initial::packages'
include_recipe 'initial::services'
include_recipe 'initial::configs'
