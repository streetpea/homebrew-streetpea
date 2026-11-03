cask "chiaki-ng" do
  version "1.10.1"
  sha256 "cf34b0bd808177beadf42563bdca166818193f847fa6b8956bcdaafae31f7e06"

  url "https://github.com/chiaki-ng/chiaki-ng/releases/download/v#{version}/chiaki-ng-macos_arm64-Release.dmg"
  name "chiaki-ng"
  desc "PlayStation remote play client"
  homepage "https://chiaki-ng.github.io/chiaki-ng/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "chiaki-ng.app"

  zap trash: [
    "~/Library/Application Support/Chiaki",
    "~/Library/Caches/Chiaki",
    "~/Library/Preferences/com.chiaki.Chiaki*.plist",
    "~/Library/Preferences/com.chiaki.pl_render_params.plist",
    "~/Library/Saved Application State/org.streetpea.chiaking.savedState",
  ]
end
