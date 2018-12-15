require 'spec_helper'

target_versions = [
  'v10.14.2'
]
target_versions.each do|version|
  describe file(home_path + '/.nodebrew/node/' + version) do
    it { should be_directory }
  end
end
