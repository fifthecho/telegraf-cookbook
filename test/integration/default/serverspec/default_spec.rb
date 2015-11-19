require 'spec_helper'

describe 'telegraf::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package('telegraf') do
    it { should be_installed }
  end

  describe file('/etc/opt/telegraf/telegraf.conf') do
  	it {should exist}
  	it {should be_file}
  end

  describe service('telegraf') do
  	it {should be_enabled}
  end
end
