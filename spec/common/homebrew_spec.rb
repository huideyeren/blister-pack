require 'spec_helper'

# describe command('which brew') do
#   its(:stdout) { should match(%r{/bin/brew}) }
# end

# describe command('brew tap') do
#   its(:stdout) { should match(%r{homebrew\/cask-cask}) }
# end

target_packages = [
  'autoconf',
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
  'vim',
  'lua',
  'luajit',
  'zsh',
  'postgresql',
  'mariadb',
  'fontforge'
]

target_packages.each do|package|
  describe file(homebrew_cellar + '/' + package) do
    it { should be_directory }
  end
end
