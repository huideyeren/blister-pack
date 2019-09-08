require 'spec_helper'

target_versions = [
  'v10.16.3', 'v12.10.0'
]
target_versions.each do|version|
  describe file(home_path + '/.nodebrew/node/' + version) do
    it { should be_directory }
  end
end
