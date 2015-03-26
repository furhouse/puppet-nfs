require 'spec_helper'

describe 'nfs::client::mount', :type => :define do
  let(:title) { '/srv/test' }
  let(:facts) { { :operatingsystem => 'ubuntu' } }
  let(:params) {{ :server => 'nfs.int.net', :share => '/srv/share' } }
  it do
    should compile
    should contain_class('nfs::client')
    should contain_mount('shared /srv/test by nfs.int.net')
  end
end
