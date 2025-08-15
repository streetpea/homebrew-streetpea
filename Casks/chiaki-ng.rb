cask "chiaki-ng" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.9,1"
  sha256 arm:   "755463596cb5797d78ae46fea2e4fb149e9e56cb77592ef77f7d0ad61759b889",
         intel: "e656de9480c377a456b231956e6038985dd14088332d7d757d7249808f22ead6"

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
