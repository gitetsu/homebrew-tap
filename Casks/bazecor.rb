cask "bazecor" do
  version "0.3.4"
  sha256 "6f3bdbf71d1bd65ba2b8310f3e4861c8feddceae36c47bf754288839ec6d1d86"

  url "https://github.com/Dygmalab/Bazecor/releases/download/v#{version}/Bazecor-#{version}.dmg"
  name "Bazecor"
  desc "Graphical configurator for Dygma Raise"
  homepage "https://github.com/Dygmalab/Bazecor"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Bazecor.app"
end
