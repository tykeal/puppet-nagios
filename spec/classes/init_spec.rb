require 'spec_helper'
describe 'nagios' do
  # Force our osfamily so that our params class doesn't croak
  let(:facts) {
    {
      :osfamily => 'RedHat'
    }
  }

  context 'with defaults for all parameters' do
    it { should contain_class('nagios') }
    it { should contain_package('nagios') }
    it { should contain_package('nagios-plugins-all') }
  end
end

# vim: ts=2 sw=2 sts=2 et :
