cask "chiaki-ng" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.5,0"
  sha256 arm:   "b22f646e26d78431029f3055def47c9cd4215c4babf4abbb6a243a8eb0d91543",
         intel: "cea5e3f1fb0a5c28259394f51b87f5869897a66de215107f85e6c13f9daf7c60"

  url "https://github.com/streetpea/chiaki-ng/releases/download/v#{version.csv.first}/chiaki-ng-macos_#{arch}-Release.dmg",
      verified: "github.com/streetpea/chiaki-ng/"
  name "chiaki-ng"
  desc "PlayStation remote play client next-generation"
  homepage "https://streetpea.github.io/chiaki-ng/"

  livecheck do
    url "https://github.com/streetpea/chiaki-ng/releases"
  end

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/chiaki-ng.app"
  end

  app "chiaki-ng.app"

  zap trash: [
    "~/Library/Application Support/Chiaki",
    "~/Library/Preferences/com.chiaki.Chiaki.plist",
  ]
end