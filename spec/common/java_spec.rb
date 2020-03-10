require 'spec_helper'

target_packages = [
  'java',
]

target_packages.each do |package|
  describe command "brew cask list | grep -q #{package}" do
    its(:exit_status) { should eq 0 }
  end
end
describe file(homebrew_cellar + '/kotlin') do
  it { should be_directory }
end
describe command('which go') do
  its(:stdout) { should match(%r{/usr/local/bin/go}) }
end