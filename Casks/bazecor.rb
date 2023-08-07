cask "bazecor" do
  version "1.3.2"
  sha256 "06e56b9160bdac99fccebe7fa505c0145c8697250c3fd6fe59388968f67b4773"

  url "https://github.com/Dygmalab/Bazecor/releases/download/bazecor-#{version}/Bazecor-#{version}.dmg"
  name "Bazecor"
  desc "Graphical configurator for Dygma Raise"
  homepage "https://github.com/Dygmalab/Bazecor"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Bazecor.app"
end
