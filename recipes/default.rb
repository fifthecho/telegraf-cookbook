#
# Cookbook Name:: telegraf
# Recipe:: default
#
# Copyright (c) 2015 Jeff Moody, All Rights Reserved.
include_recipe 'telegraf::install'

case node['platform_family']
when 'rhel'
  include_recipe 'telegraf::rpm_discovery'
when 'debian'
  # include_recipe 'telegraf::deb_discovery'
end

include_recipe 'telegraf::configure'

include_recipe 'telegraf::service'
