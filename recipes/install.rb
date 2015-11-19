#
# Cookbook Name:: telegraf
# Recipe:: install
#
# Copyright (c) 2015 Jeff Moody, All Rights Reserved.
case node['platform_family']
when 'rhel'
  remote_file "#{Chef::Config[:file_cache_path]}/telegraf.rpm" do
    source "https://s3.amazonaws.com/get.influxdb.org/telegraf/telegraf-#{node['telegraf']['version']}-1.x86_64.rpm"
  end
  yum_package 'telegraf' do
    source "#{Chef::Config[:file_cache_path]}/telegraf.rpm"
    options '--nogpgcheck'
    action :install
  end
when 'debian'
  remote_file "#{Chef::Config[:file_cache_path]}/telegraf.deb" do
      source "https://s3.amazonaws.com/get.influxdb.org/telegraf/telegraf_#{node['telegraf']['version']}_amd64.deb"
    action :create
  end
  dpkg_package 'telegraf' do
      source "#{Chef::Config[:file_cache_path]}/telegraf.deb"
    action :install
  end
end

template '/etc/opt/telegraf/telegraf.conf' do
  source 'telegraf.conf.erb'
end

service 'telegraf' do
  supports :status => true, :restart => true, :reload => true
  action [:start, :enable]
end
