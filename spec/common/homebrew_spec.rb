require 'spec_helper'

describe command('which brew') do
  its(:stdout) { should match(%r{/bin/brew}) }
end

describe command('brew tap') do
  its(:stdout) { should match(%r{caskroom\/cask}) }
end

target_packages = [
  'autoconf',
  'cask',
  'git',
  'hub',
  'ruby-build',
  'rbenv',
  'rbenv-default-gems',
  'gnu-tar',
  'ack',
  'findutils',
  'readline',
  'openssl',
  'gdbm',
  'sqlite',
  'mysql',
  'zsh'
]

target_packages.each do|package|
  describe file(homebrew_cellar + '/' + package) do
    it { should be_directory }
  end
end
