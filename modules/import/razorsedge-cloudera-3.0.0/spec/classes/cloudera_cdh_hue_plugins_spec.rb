#!/usr/bin/env rspec

require 'spec_helper'

describe 'cloudera::cdh::hue::plugins', :type => 'class' do

#  context 'on a non-supported operatingsystem' do
#    let :facts do {
#      :osfamily        => 'foo',
#      :operatingsystem => 'bar'
#    }
#    end
#    it 'should fail' do
#      expect {
#        should raise_error(Puppet::Error, /Module cloudera is not supported on bar/)
#      }
#    end
#  end

  context 'on a supported operatingsystem, default parameters' do
#    let(:params) {{}}
#    let :facts do {
#      :osfamily        => 'RedHat',
#      :operatingsystem => 'CentOS'
#    }
#    end
    it { should contain_package('hue-plugins').with_ensure('present') }
    it { should contain_package('hue-common').with_ensure('present') }
  end
end
