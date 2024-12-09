cask "chiaki-ng" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.2"
  sha256 arm:   "61b5bfe803e4a6ecd0a2eed99a16313ba809dce80c9a8a342686244077509559",
         intel: "4088661af6c14cdfa810ae055ff03f00f81fbc414e6880424da85ac8e076a582"

  url "https://github.com/streetpea/chiaki-ng/releases/download/v#{version}/chiaki-ng-macos_#{arch}-Release.dmg",
      verified: "github.com/streetpea/chiaki-ng/"
  name "chiaki-ng"
  desc "PlayStation remote play client next-generation"
  homepage "https://streetpea.github.io/chiaki-ng/"

  livecheck do
    url "https://github.com/streetpea/chiaki-ng/releases"
  end

  app "chiaki-ng.app"

  zap trash: [
    "~/Library/Application Support/Chiaki",
    "~/Library/Preferences/com.chiaki.Chiaki.plist",
  ]

  caveats do
    requires_rosetta
  end
end
