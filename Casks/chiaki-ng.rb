cask "chiaki-ng" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.9,0"
  sha256 arm:   "ee95bf6dd51842579028b6c4e90702d98d312d54852256280525988cfc2fe434",
         intel: "5d401799ccb1176bc8014a3f73b64a66b0b4a32e6d408d03b8c7e0a41b455966"

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
