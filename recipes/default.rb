#
# Cookbook Name:: git-install
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


node.default['git']['version'] = node['git-install']['version']

case node['platform_family']
  when 'debian'
    apt_update 'apt update' do
      action :update
    end
end

include_recipe 'git::default'	