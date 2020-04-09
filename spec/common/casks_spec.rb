require 'spec_helper'

target_packages = [
  # "google-chrome",
  "microsoft-edge",
  # "firefox",
  # "whalebird",
  # "discord",
  # "slack",
  # "steam",
  # "visual-studio-code",
  # "dropbox",
  "libreoffice",
  "libreoffice-language-pack",
  # microsoft-office",
  "microsoft-teams",
  # "gimp",
  "android-file-transfer",
  "adobe-acrobat-reader",
  # "iterm2",
  "github",
  "sourcetree",
  "tableplus",
  "github",
  "azure-data-studio",
]

target_packages.each do |package|
  describe command "brew cask list | grep -q #{package}" do
    its(:exit_status) { should eq 0 }
  end
end
