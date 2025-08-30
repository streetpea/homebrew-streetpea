cask "chiaki-ng" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.9,2"
  sha256 arm:   "d66cea3ed213aff959687cec6a495575cf4d67b36df90c58d0ad9ab961c90dad",
         intel: "8310389bcceaed761f465ed39739429222a8b66510fa84e2956fb9b876a90c73"

  url "https://github.com/streetpea/chiaki-ng/releases/download/v#{version.csv.first}/chiaki-ng-macos_#{arch}-Release-fixed.dmg",
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
