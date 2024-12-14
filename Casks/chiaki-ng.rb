cask "chiaki-ng" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.3"
  sha256 arm:   "62e16bdda346ca30920972d195c60ae855a1589e09c0ba0e8c61d6d93174b40f",
         intel: "bfa5d3922d9073ca8430d2f43d9011eb5146c42b9b167363f015565ba2b3698c"

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
