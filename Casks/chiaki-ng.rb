cask "chiaki-ng" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.5,1"
  sha256 arm:   "b22f646e26d78431029f3055def47c9cd4215c4babf4abbb6a243a8eb0d91543",
         intel: "be8636508a679a5fad7ff0092181434d552df4a65b84a91280738b7e5accdc81"

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