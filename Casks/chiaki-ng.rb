cask "chiaki-ng" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.3"
  sha256 arm:   "62e16bdda346ca30920972d195c60ae855a1589e09c0ba0e8c61d6d93174b40f",
         intel: "e35e3e74235e0077d94ff968729d0c463a9e52c2b8961353f474e2d8530305c8"

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
end
