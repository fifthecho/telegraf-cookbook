#
# Cookbook Name:: telegraf
# Recipe:: rpm_discovery
#
# Copyright (c) 2015 Jeff Moody, All Rights Reserved.

# This recipe is probably entirely bad form in that it's using a bit
# of hacky ruby to search for packages and then set node attributes.
# These attributes are being set at a default level so that overrides 
# still take place. If you want autodiscovery but want to ignore 
# some things, then set overrides on the node.

command = Mixlib::ShellOut.new('rpm -qa --qf "%{NAME}\n"')
command.run_command

packages = command.stdout.split

['docker', 'elasticsearch', 'haproxy', 'kafka', 'leofs', 'memcached',
  'nginx', 'redis'].each do | p |
    if packages.include?(p)
      node.default['telegraf'][p] = true
    end
end

if packages.include?('aerospike-server-community')
  node.default['telegraf']['aerospike'] = true
end

if packages.include?('httpd')
  node.default['telegraf']['apache'] = true
end

if packages.include?('bcache-tools')
  node.default['telegraf']['bcache'] = true
end

if packages.include?('lustre-client')
  node.default['telegraf']['lustre2'] = true
end

if packages.include?('mongodb-org-server') or packages.include?('mongo-10gen-server') or packages.include?('mongodb-server')
  node.default['telegraf']['mongodb'] = true
end

if packages.include?('mariadb') or packages.include?('mysql-community-server') or packages.include?('mysql-server')
  node.default['telegraf']['mysql'] = true
end

if packages.include?('php-fpm')
  node.default['telegraf']['phpfpm'] = true
end

if packages.include?('postgresql-server')
  node.default['telegraf']['postgresql'] = true
end

if packages.include?('rabbitmq-server')
  node.default['telegraf']['rabbitmq'] = true
end

if packages.include?('zookeeper-server')
  node.default['telegraf']['zookeeper'] = true
end