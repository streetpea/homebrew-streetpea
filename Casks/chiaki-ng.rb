cask "chiaki-ng" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.4,0"
  sha256 arm:   "5942a0e7ebea70eb8fc80f876014ea4e17db2d9bd9f1d696b12a6bcd47215841",
         intel: "51b141a71d33e773608abd05d56c81fd96aa4123ab062832f10ba4061242b317"

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