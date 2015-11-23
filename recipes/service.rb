#
# Cookbook Name:: telegraf
# Recipe:: service
#
# Copyright (c) 2015 Jeff Moody, All Rights Reserved.
#

service 'telegraf' do
  supports :status => true, :restart => true, :reload => true
  action [:start, :enable]
end