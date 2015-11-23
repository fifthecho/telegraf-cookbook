#
# Cookbook Name:: telegraf
# Recipe:: configure
#
# Copyright (c) 2015 Jeff Moody, All Rights Reserved.
#

service 'telegraf' do
  supports :status => true, :restart => true, :reload => true
  end

template '/etc/opt/telegraf/telegraf.conf' do
  source 'telegraf.conf.erb'
  notifies :restart, 'service[telegraf]', :delayed
end
