cask "chiaki-ng" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.1"
  sha256 arm:   "e3b564d511e2e4e4ab1f38975e79da11323655b20d57ac005b1c20813d53a4d8",
         intel: "d57a2d4779b7753838d06df254c35d1fd2f1257da8b6d1ae38902a6ec902f15c"

  url "https://github.com/streetpea/chiaki-ng/releases/download/v#{version}/chiaki-ng-macos_#{arch}-Release.zip",
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

  caveats do
    requires_rosetta
  end
end
