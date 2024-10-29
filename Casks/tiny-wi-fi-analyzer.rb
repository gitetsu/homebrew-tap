# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "tiny-wi-fi-analyzer" do
  version "0.3.0"
  sha256 "5f985c19b5cea186269cf2a45e41010ef7725020db43bbc62769ecd019749044"

  url "https://github.com/nolze/tiny-wifi-analyzer/releases/download/v#{version}rc1/Tiny_Wi-Fi_Analyzer.dmg"
  name "Tiny_Wi-Fi_Analyzer"
  desc ""
  homepage "https://github.com/nolze/tiny-wifi-analyzer"

  # Documentation: https://docs.brew.sh/Brew-Livecheck

  livecheck do
    url :url
    strategy :github_latest
  end

  def install
    system "hdiutil", "attach", "Tiny_Wi-Fi_Analyzer.dmg"
    system "cp", "-R", "/Volumes/'Tiny Wi-Fi Analyzer'/'Tiny Wi-Fi Analyzer.app'", "#{prefix}/'Tiny Wi-Fi Analyzer.app'"
    system "hdiutil", "detach", "/Volumes/'Tiny Wi-Fi Analyzer'"
  end
  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end
