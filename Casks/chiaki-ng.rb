cask "chiaki-ng" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.6,1"
  sha256 arm:   "e2db79d41b47d877849f1b66ae9631f16846bb39d21cc0c66b229c5edb30d0e6",
         intel: "b83c0c0ff3912d436898c347d844e79ce5b11d2f3a0ab41b19909a24e570d514"

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
