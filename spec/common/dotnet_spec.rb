require 'spec_helper'

target_packages = [
  'dotnet-sdk',
  'powershell',
]

target_packages.each do |package|
  describe command "brew cask list | grep -q #{package}" do
    its(:exit_status) { should eq 0 }
  end
end
