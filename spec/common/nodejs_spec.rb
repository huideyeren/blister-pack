require 'spec_helper'

target_versions = [
  'v12.16.1'
]
target_versions.each do|version|
  describe file(home_path + '/.nodebrew/node/' + version) do
    it { should be_directory }
  end
end
