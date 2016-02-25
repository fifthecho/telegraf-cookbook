require 'spec_helper'

RSpec.configure do |c|
  c.before :all do
    c.path = '/bin:/sbin:/usr/sbin:/usr/bin'
  end
end

describe 'telegraf::default' do
  describe package('telegraf') do
    it { should be_installed }
  end

  describe file('/etc/telegraf/telegraf.conf') do
  	it {should exist}
  	it {should be_file}
    its(:content) { should match /outputs.influxdb/ }
    its(:content) { should_not match /outputs.amqp/ }
    its(:content) { should_not match /outputs.datadog/ }
    its(:content) { should_not match /outputs.kafka/ }
    its(:content) { should_not match /outputs.librato/ }
    its(:content) { should_not match /outputs.mqtt/ }
    its(:content) { should_not match /outputs.opentsdb/ }
    its(:content) { should_not match /metricsmetricsmetricsmetrics/ }
    its(:content) { should match /cpu/ }
    its(:content) { should match /cpu_time/ }
    its(:content) { should match /disk/ }
    its(:content) { should match /io/ }
    its(:content) { should match /mem/ }
    its(:content) { should match /net/ }
    its(:content) { should match /netstat/ }
    its(:content) { should match /swap/ }
    its(:content) { should match /system/ }
    its(:content) { should_not match /aerospike/ }
    its(:content) { should_not match /apache/ }
    its(:content) { should_not match /bcache/ }
    its(:content) { should_not match /disque/ }
    its(:content) { should_not match /docker/ }
    its(:content) { should_not match /elasticsearch/ }
    its(:content) { should_not match /exec/ }
    its(:content) { should_not match /exec.commands/ }
    its(:content) { should_not match /haproxy/ }
    its(:content) { should_not match /httpjson/ }
    its(:content) { should_not match /httpjson.services/ }
    its(:content) { should_not match /kafka/ }
    its(:content) { should_not match /memcached/ }
    its(:content) { should_not match /mongodb/ }
    its(:content) { should_not match /mysql/ }
    its(:content) { should_not match /nginx/ }
    its(:content) { should_not match /phpfpm/ }
    its(:content) { should_not match /ping/ }
    its(:content) { should_not match /postgresql/ }
    its(:content) { should_not match /postgresq.servers/ }
    its(:content) { should_not match /prometheus/ }
    its(:content) { should_not match /puppetagent/ }
    its(:content) { should_not match /rabbitmq/ }
    its(:content) { should_not match /redis/ }
    its(:content) { should_not match /rethinkdb/ }
    its(:content) { should_not match /zookeeper/ }
    its(:content) { should_not match /statsd/ }
  end

  describe service('telegraf'), :sudo => true do
  	it {should be_enabled}
    it {should be_running}
  end
  
end
