cask "chiaki-ng" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.7,0"
  sha256 arm:   "d26b06f11489e1680183c2aa88ffa0384db894eb71b1c93d14aac764ecdfdc95",
         intel: "42398334f99d3346f93e4dffa065af660e17a5a554e78e63f7a2bf7fd13ab6a5"

  url "https://github.com/streetpea/chiaki-ng/releases/download/v#{version.csv.first}/chiaki-ng-macos_#{arch}-Release.dmg",
      verified: "github.com/streetpea/chiaki-ng/"
  name "chiaki-ng"
  desc "PlayStation remote play client next-generation"
  homepage "https://streetpea.github.io/chiaki-ng/"

  livecheck do
    url "https://github.com/streetpea/chiaki-ng/releases"
  end

  app "chiaki-ng.app"

  postflight do
    system "xattr", "-d", "com.apple.quarantine", "#{appdir}/chiaki-ng.app"
  end

  zap trash: [
    "~/Library/Application Support/Chiaki",
    "~/Library/Preferences/com.chiaki.Chiaki.plist",
  ]
end
