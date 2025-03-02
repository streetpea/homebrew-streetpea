cask "chiaki-ng" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.6,0"
  sha256 arm:   "16eb2e49248122c41b3f836e78c3a00fe86960799b37899b3ffcc9cd913c228a",
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
